from django.contrib import admin
from .models import Customer, Category, Brand, Product, Image
from django.db import models


# Register your models here.
class CustomerAdminView(admin.ModelAdmin):
    model = Customer
    list_display = ['customer_username', 'customer_firstname', 'customer_lastname', 'customer_email', ]


class CategoryAdminView(admin.ModelAdmin):
    model = Category
    list_display = ('category_name', 'sub_category',)


class BrandAdminView(admin.ModelAdmin):
    model = Brand
    list_display = ('brand_name',)


class ProductAdminView(admin.ModelAdmin):
    model = Product
    list_display = ('product_name', 'product_price', 'product_featureImage', 'brand_id', 'category_id')

class ImageAdminView(admin.ModelAdmin):
    model = Image
    list_display = ('image_path',)

admin.site.register(Customer, CustomerAdminView)
admin.site.register(Category, CategoryAdminView)
admin.site.register(Brand, BrandAdminView)
admin.site.register(Product, ProductAdminView)
admin.site.register(Image, ImageAdminView)
admin.site.empty_value_display = '(None)'
