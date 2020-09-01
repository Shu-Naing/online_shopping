from django.db import models

class Customer(models.Model):
    customer_username = models.CharField(max_length = 80)
    customer_firstname = models.CharField(max_length = 20)
    customer_lastname = models.CharField(max_length = 20)
    customer_email = models.EmailField()
    customer_password = models.CharField(max_length = 50)