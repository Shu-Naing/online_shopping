# Online Shopping
This is Vidya Media's Online Shopping website with Django Framework

## Completed Functions
- [x] Admin site insert/update/delete to Customer/Products/Brands/Categories/Images.
- [x] Customer can view the categories and subcategories in navigation dropdown.
- [x] Customer can view the individual products by clicking the products.
- [x] Customer can insert/update/delete the shopping cart products and quantity.
- [x] Customer can search the products, categories and brands.
- [x] Customer can manage account. 
- [x] Customer can confirm the checkout with Cash on Delivery method.
- [x] Guests can create account.

## Functions still in Development
- [] API development.
- [] Customer account verification on registration.
- [] Changing password in customer manage account.
- [] Customer adding mobile phone number and sms verification (Optional).
- [] Checkout with Credit Cards.
- [] Some Frontend site functionalities. \
**Further development functions will be updated**

## To Run This Project
To get this project up and running you should start by having Python installed on your computer. It's advised you create a virtual environment to store your projects dependencies separately. You can install virtualenv with
```
pip install virtualenv
```
Clone or download this repository and open it in your editor of choice. In a terminal (mac/linux) or windows terminal, run the following command in the base directory of this project

```
virtualenv env
```

That will create a new folder `env` in your project directory. Next activate it with this command on mac/linux:

```
source env/bin/active
```

Then install the project dependencies with

```
pip install -r requirements.txt
```

To import the database to the Postgres, you'll need to create the database named with `shopping`. After creating the database, you'll need to import SQL database with following command:

```
psql -U postgres shopping < shopping.sql
```

> :warning: **If you clone the database**: You will need to update the database by above command!

After you import the `shopping.sql` to shopping database, you can now runserver by:
```
./manage.py runserver
```
> :exclamation: If you want to run the server in destination port, you'll need to edit in the `settings.py` as follow:
```
ALLOWED_HOSTS = [your_destination_port]
```
