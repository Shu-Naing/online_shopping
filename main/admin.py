from django.contrib import admin
from .models import Customer
from django.db import models

# Register your models here.
class CustomerAdminView(admin.ModelAdmin):
    model = Customer
    list_display = ['customer_username', 'customer_firstname', 'customer_lastname', 'customer_email',]
admin.site.register(Customer, CustomerAdminView)
