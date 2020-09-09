from django.shortcuts import render, redirect, HttpResponseRedirect, get_object_or_404
from django.http import HttpResponse
from django.views.decorators.csrf import csrf_protect
from django.contrib.auth import hashers
from .forms import RegistrationForm, LoginForm
from django.contrib import messages
from .models import Customer, Brand, Product, Category
from datetime import datetime


@csrf_protect
def registration(request):
    if request.method == "GET":
        form = RegistrationForm()
    elif request.method == "POST":
        form = RegistrationForm(request.POST)
        if form.is_valid():
            if not Customer.objects.filter(customer_email=form.cleaned_data['customer_email']).exists():
                hashed_password = hashers.make_password(form.cleaned_data['customer_password'])
                customer = Customer(
                    customer_username=form.cleaned_data['customer_username'],
                    customer_firstname=form.cleaned_data['customer_firstname'],
                    customer_lastname=form.cleaned_data['customer_lastname'],
                    customer_email=form.cleaned_data['customer_email'],
                    customer_password=hashed_password,
                    customer_lastlogin=datetime.today()
                )
                customer.save()
                return redirect("main:login")
            else:
                messages.warning(request, "Email already taken!!")
                return redirect("main:registration")
    return render(request, 'registration.html', {'form': form})


@csrf_protect
def login(request):
    form = LoginForm()
    if request.method == "POST":
        form = LoginForm(request.POST)
        if form.is_valid():
            email = form.cleaned_data.get('customer_email')
            password = form.cleaned_data.get('customer_password')
            email_exists = Customer.objects.filter(customer_email=form.cleaned_data['customer_email']).exists()
            if not email_exists:
                return redirect('main:login')
            else:
                query = Customer.objects.get(customer_email=email)
                cust_pass = getattr(query, 'customer_password')
                matchcheck = hashers.check_password(password, cust_pass)
                if matchcheck:
                    cust_id = getattr(query, 'id')
                    customer = get_object_or_404(Customer, customer_password = cust_pass, pk = cust_id)
                    customer.save(update_fields = ['customer_lastlogin'])
                    Customer.objects.filter(pk = customer.pk).update(customer_lastlogin = datetime.today())
                    request.session.set_expiry(900)
                    request.session['customer'] = cust_id
                    return redirect('main:home')
    return render(request, 'login.html', {'form': form})

@csrf_protect
def manageAccount(request):
    if request.method == "POST":
        customer_id = request.POST.get('id')
        customer = get_object_or_404(Customer, pk = customer_id)
        customer.save(update_fields = ['customer_firstname', 'customer_lastname', 'customer_dob', 'customer_gender'])
        Customer.objects.filter(pk = customer.pk).update(customer_firstname = request.POST.get('firstname'), 
        customer_lastname = request.POST.get('lastname'), 
        customer_dob = datetime.strptime(request.POST.get('dob'), "%Y-%m-%d").date(),
        customer_gender = request.POST.get('gender'))

    return render(request, 'manage_account.html')



def logout(request):
    request.session.flush()
    return redirect("main:home")


def home(request):
    if request.method == "GET":
        return render(request, 'index.html')


def shop(request, sub__category):
    if request.method == "GET":
        product_list = []
        brand_names = []
        category = Category.objects.filter(sub_category = sub__category).values_list('id', flat = True)
        product = Product.objects.filter(category_id = category[0]).values('product_name', 'product_price', 'product_featureImage')
        brand_list = Product.objects.filter(category_id = category[0]).values('brand_id')
        for brand_id in brand_list:
            brand = Brand.objects.filter(pk = brand_id['brand_id']).values_list('brand_name', flat = True)
            brand_names.append({'brand_name': brand[0]})
        brand_names = sorted(brand_names, key = lambda i: i['brand_name'])
        for product in product:
            product_list.append({"p_name": product['product_name'], "p_price": product['product_price'],
                                 "p_image": product['product_featureImage']})
    return render(request, 'shop.html', {'product': product_list, 'brand': brand_names})
