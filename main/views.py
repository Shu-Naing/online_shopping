from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.views.decorators.csrf import csrf_protect
from django.template import RequestContext
from .models import Customer

@csrf_protect
def registration(request):
    if request.method == "GET":
        return render(request, 'registration.html')
    elif request.method == "POST":
        customer = Customer(
            customer_name = request.POST['username'],
            customer_email = request.POST['email'],
            customer_password = request.POST['password'],
        )
        customer.save()
        return render(request, 'index.html')

# Create your views here.
