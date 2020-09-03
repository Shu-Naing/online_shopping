from django.shortcuts import render, redirect, HttpResponseRedirect, loader, reverse
from django.http import HttpResponse
from django.views.decorators.csrf import csrf_protect
from django.contrib.auth import hashers
# from django.core.exceptions import ValidationError
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from .forms import RegistrationForm, LoginForm
from django.contrib import messages
from .models import Customer
from django.contrib.auth import authenticate, login


@csrf_protect
def registration(request):
    if request.method == "GET":
        form = RegistrationForm()
    elif request.method == "POST":
        form = RegistrationForm(request.POST)
        if form.is_valid():
            if not Customer.objects.filter(customer_email=form.cleaned_data['customer_email']).exists():
                hashed_password = hashers.make_password(form.cleaned_data['customer_password'])
                customer = Customer(
                    customer_username=form.cleaned_data['customer_username'],
                    customer_firstname=form.cleaned_data['customer_firstname'],
                    customer_lastname=form.cleaned_data['customer_lastname'],
                    customer_email=form.cleaned_data['customer_email'],
                    customer_password=hashed_password,
                )
                customer.save()
                return redirect("main:login")
            else:
                messages.warning(request, "Email already taken!!")
                return redirect("main:registration")
    return render(request, 'registration.html', {'form': form})


@csrf_protect
def login(request):
    form = LoginForm()
    if request.method == "POST":
        form = LoginForm(request.POST)
        if form.is_valid():
            email = form.cleaned_data.get('customer_email')
            password = form.cleaned_data.get('customer_password')
            email_exists = Customer.objects.filter(customer_email=form.cleaned_data['customer_email']).exists()
            if not email_exists:
                messages.error(request, "Invalid email")
                return redirect('main:login')
            else:
                query = Customer.objects.get(customer_email=email)
                cust_pass = getattr(query, 'customer_password')
                matchcheck = hashers.check_password(password, cust_pass)
                if matchcheck:
                    messages.info(request, f"You are now logged in as")
                    return redirect('main:home')
    return render(request, 'login.html', {'form': form})

def home(request):
    if request.method == "GET":
        return render(request, 'index.html')
    