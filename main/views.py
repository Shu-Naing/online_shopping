from django.shortcuts import render
from django.http import HttpResponse

def registration(request):
    if request.method == "GET":
        return render(request, 'registration.html')

# Create your views here.
