from django.db import models

class Customer(models.Model):
    customer_username = models.CharField(max_length = 80)
    customer_firstname = models.CharField(max_length = 20, blank = True)
    customer_lastname = models.CharField(max_length = 20, blank = True)
    customer_email = models.EmailField()
    customer_password = models.CharField(max_length = 150)
    customer_lastlogin = models.DateTimeField()

class Category(models.Model):
    category_name = models.CharField(max_length = 80)
    sub_category = models.CharField(max_length = 80)

