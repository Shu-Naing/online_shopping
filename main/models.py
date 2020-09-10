from django.db import models


class Customer(models.Model):
    customer_username = models.CharField(max_length = 80)
    customer_firstname = models.CharField(max_length = 20, blank = True)
    customer_lastname = models.CharField(max_length = 20, blank = True)
    customer_dob = models.DateField(blank = True, null = True)
    customer_gender = models.CharField(max_length=9, null = True)
    customer_mobile = models.BigIntegerField(blank = True, null = True)
    customer_email = models.EmailField()
    customer_password = models.CharField(max_length=150)
    customer_lastlogin = models.DateTimeField()


class Category(models.Model):
    category_name = models.CharField(max_length=80)
    sub_category = models.CharField(max_length=80)


class Brand(models.Model):
    brand_name = models.CharField(max_length=30)


class Product(models.Model):
    brand_id = models.ForeignKey(Brand, on_delete=models.CASCADE)
    category_id = models.ForeignKey(Category, on_delete=models.CASCADE)
    product_name = models.CharField(max_length=80)
    product_price = models.DecimalField(max_digits=5, decimal_places=2)
    product_featureImage = models.ImageField(upload_to='featureImage')


