from django.db import models


class Customer(models.Model):
    customer_username = models.CharField(max_length = 80)
    customer_firstname = models.CharField(max_length = 20, blank = True)
    customer_lastname = models.CharField(max_length = 20, blank = True)
    customer_dob = models.DateField(blank = True, null = True)
    customer_gender = models.CharField(max_length=9, null = True)
    customer_mobile = models.BigIntegerField(blank = True, null = True)
    customer_email = models.EmailField()
    password = models.CharField(max_length=150)
    last_login = models.DateTimeField()


class Category(models.Model):
    category_name = models.CharField(max_length=80)
    sub_category = models.CharField(max_length=80)

    def __str__(self):
        return self.category_name



class Brand(models.Model):
    brand_name = models.CharField(max_length=30)
    
    def __str__(self):
        return self.brand_name


class Product(models.Model):
    brand_id = models.ForeignKey("Brand", on_delete=models.CASCADE)
    category_id = models.ForeignKey("Category", on_delete=models.CASCADE)
    product_name = models.CharField(max_length=80)
    product_price = models.DecimalField(max_digits=10, decimal_places=2)
    product_featureImage = models.ImageField(upload_to='images')
    product_description = models.CharField(max_length=100, blank = True, null = True)

    def __unicode__(self):
        return self.product_name

class Image(models.Model):
    product_id = models.ForeignKey(Product, on_delete=models.CASCADE)
    image_path = models.ImageField(upload_to='sub_images')
class Address(models.Model):
    street_1 = models.CharField(max_length = 150)
    street_2 = models.CharField(max_length = 150, null = True, blank = True)
    township = models.CharField(max_length = 30)
    customer_id = models.ForeignKey(Customer, on_delete = models.CASCADE)

class OrderDetail(models.Model):
    customer_id = models.ForeignKey(Customer, on_delete = models.CASCADE)
    payment_method = models.CharField(max_length = 50)
    number_of_products = models.IntegerField()
    sub_total = models.FloatField()
    order_date = models.DateField()
    order_time = models.TimeField()

class Cart(models.Model):
    orderDetail_id = models.ForeignKey(OrderDetail, on_delete = models.CASCADE)
    product_id = models.ForeignKey(Product, on_delete = models.CASCADE)
    quantity = models.IntegerField()
    total_price = models.FloatField()
    
