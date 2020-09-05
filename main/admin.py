from django.contrib import admin
from .models import Customer, Category
from django.db import models

# Register your models here.
class CustomerAdminView(admin.ModelAdmin):
    model = Customer
    list_display = ('customer_username', 'customer_firstname', 'customer_lastname', 'customer_email',)

class CategoryAdminView(admin.ModelAdmin):
    model = Category
    list_display = ('category_name', 'sub_category',)

admin.site.register(Customer, CustomerAdminView)
admin.site.register(Category, CategoryAdminView)
