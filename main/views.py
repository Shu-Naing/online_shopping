from django.shortcuts import render, redirect, HttpResponseRedirect, get_object_or_404
from django.http import HttpResponse
from django.views.decorators.csrf import csrf_protect
from django.contrib.auth import hashers
from .forms import RegistrationForm, LoginForm
from django.contrib import messages
from .models import Customer, Category
from datetime import datetime


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
                    customer_username = form.cleaned_data['customer_username'],
                    customer_firstname = form.cleaned_data['customer_firstname'],
                    customer_lastname = form.cleaned_data['customer_lastname'],
                    customer_email = form.cleaned_data['customer_email'],
                    customer_password = hashed_password,
                    customer_lastlogin = datetime.today()
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
                return redirect('main:login')
            else:
                query = Customer.objects.get(customer_email=email)
                cust_pass = getattr(query, 'customer_password')
                matchcheck = hashers.check_password(password, cust_pass)
                if matchcheck:
                    cust_id = getattr(query, 'id')
                    customer = get_object_or_404(Customer, customer_password = cust_pass, pk = cust_id)
                    customer.save(update_fields = ['customer_lastlogin'])
                    Customer.objects.filter(pk = customer.pk).update(customer_lastlogin = datetime.today())
                    request.session['customer'] = cust_id
                    return redirect('main:home')
    return render(request, 'login.html', {'form': form})

def manageAccount(request):
    if request.method == "GET":
        return render(request, 'manage_account.html')

def logout(request):
    request.session.flush()
    return redirect("main:home")

def home(request):
    if request.method == "GET":
        return render(request, 'index.html')
