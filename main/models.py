from django.db import models

class Customer(models.Model):
    customer_name = models.CharField(max_length = 80)
    customer_email = models.EmailField()
    customer_password = models.CharField(max_length = 50)