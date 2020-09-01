from django.shortcuts import render, redirect, HttpResponseRedirect, loader, reverse
from django.http import HttpResponse, JsonResponse
from django.views.decorators.csrf import csrf_protect
from django.contrib.auth import login, authenticate
from .forms import RegistrationForm
from django.template import RequestContext
from django.contrib import messages
from .models import Customer

@csrf_protect
def registration(request):
    if request.method == "GET":
        form = RegistrationForm()
    elif request.method == "POST":
        form = RegistrationForm(request.POST)
        if form.is_valid():
            if not Customer.objects.filter(customer_email = form.cleaned_data['customer_email']).exists():
                customer = Customer(
                    customer_username = form.cleaned_data['customer_username'],
                    customer_firstname = form.cleaned_data['customer_firstname'],
                    customer_lastname = form.cleaned_data['customer_lastname'],
                    customer_email = form.cleaned_data['customer_email'],
                    customer_password = form.cleaned_data['customer_password'],
                )
                customer.save()
                return redirect(login)
            else:
                messages.add_message(request, messages.WARNING, 'Email already taken!!')
    return render(request, 'registration.html', {'form': form})

@csrf_protect
def login(request):
    if request.method == "GET":
        return render(request, 'login.html')
    # elif request.method == "POST":
    #     return redirect(reverse('login'))

# Create your views here.
