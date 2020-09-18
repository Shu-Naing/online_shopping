from django.shortcuts import render, redirect, HttpResponseRedirect, get_object_or_404
from django.views.decorators.http import require_POST
from django.contrib.sites.shortcuts import get_current_site
from django.core.mail import EmailMessage
from django.template.loader import render_to_string
from django.http import HttpResponse
from django.views.decorators.csrf import csrf_protect
from django.contrib.auth import hashers
from django.utils.encoding import force_bytes
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
from django.contrib import messages
from django.contrib.auth.tokens import PasswordResetTokenGenerator
from .forms import RegistrationForm, LoginForm, DeliveryAddressForm
from .models import Customer, Brand, Product, Category
from datetime import datetime
import json


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
                    password=hashed_password,
                    last_login=datetime.today()
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
                cust_pass = getattr(query, 'password')
                matchcheck = hashers.check_password(password, cust_pass)
                if matchcheck:
                    cust_id = getattr(query, 'id')
                    customer = get_object_or_404(Customer, password = cust_pass, pk = cust_id)
                    customer.save(update_fields = ['last_login'])
                    Customer.objects.filter(pk = customer.pk).update(last_login = datetime.today())
                    request.session.set_expiry(1800)
                    request.session['customer'] = cust_id
                    if not 'cart' in request.session:
                        request.session['cart'] = []
                    else:
                        for cart in request.session['cart']:
                            cart.update((key, request.session['customer']) for key, value in cart.items() if value == None)
                    if request.POST.get('next') == "":
                        return redirect('/')
                    return redirect("main:"+request.POST.get('next'))
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
        home_list = []
        product = Product.objects.filter().values('product_name', 'product_price', 'product_featureImage')
        for product in product:
            home_list.append({"h_name": product['product_name'], "h_price": product['product_price'],
                                 "h_image": product['product_featureImage']})
    return render(request, 'index.html', {'homeProduct': home_list})
    


def shop(request, sub__category):
    if request.method == "GET":
        product_list = []
        brand_names = []
        category = Category.objects.filter(sub_category = sub__category).values_list('id', flat = True)
        product = Product.objects.filter(category_id = category[0]).values('product_name', 'product_price', 'product_featureImage')
        test = Product.objects.get(product_name = 'test')
        print(test.product_featureImage.url)
        brand_list = Product.objects.filter(category_id = category[0]).values('brand_id')
        for brand_id in brand_list:
            brand = Brand.objects.filter(pk = brand_id['brand_id']).values_list('brand_name', flat = True)
            brand_names.append({'brand_name': brand[0]})
        brand_names = sorted(brand_names, key = lambda i: i['brand_name'])
        brand_names = list({v['brand_name']:v for v in brand_names}.values())
        count = product.count()

        for product in product:
            product_list.append({"p_name": product['product_name'], "p_price": product['product_price'],
                                 "p_image": product['product_featureImage']})
    return render(request, 'shop.html', {'product': product_list, 'brand': brand_names, 'proCount': count})


def confirm_email(request):
    if request.method == "POST":
        customer = Customer.objects.get(pk = request.session['customer'])
        email = Customer.objects.filter(pk = request.session['customer']).values_list('customer_email', flat = True)
        if email[0] == request.POST.get('email'):
            current_site = get_current_site(request)
            email_subject = "Verify your email"
            message = render_to_string("account_activate.html", {
                'domain': request.get_host(),
                'uid': urlsafe_base64_encode(force_bytes(request.session['customer'])),
                'token': PasswordResetTokenGenerator().make_token(customer),
            })
            to_email = email[0]
            send_email = EmailMessage(email_subject, message, to = [to_email])
            send_email.send()
            return render(request, 'confirmation.html')
        else:
            return render(request, 'confirm_email.html', {"error": True})
    return render(request, 'confirm_email.html', {})

def activate(request, uidb64, token):
    try:
        uid = urlsafe_base64_decode(uidb64).decode()
        customer = Customer.objects.get(pk = uid)
    except(TypeError, ValueError, OverflowError, Customer.DoesNotExist):
        customer = None
    if customer is not None and PasswordResetTokenGenerator().check_token(customer, token):
        return render(request, 'change_email.html', {"uid": uidb64, "token":token})
    else:
        return HttpResponse('Activation link is invalid!')

def manage_by_email(request):
    if request.method == "POST":
        customer_id = request.session['customer']
        customer = get_object_or_404(Customer, pk = customer_id)
        customer.save(update_fields = ['customer_email'])
        Customer.objects.filter(pk = customer.pk).update(customer_email = request.POST.get('email')) 
        return redirect("main:manage_account")

def singleProduct(request, product):
    if request.method == "GET":
        single_list = []
        oneProduct = Product.objects.filter(product_name = product).values_list('id','product_name', 'product_price', 'product_featureImage', 'product_description')
        for product in oneProduct[0]:
            single_list.append(product)
        return render(request, 'single-product.html', {'single_product': single_list})

def get_from_cart(cart):
    order_products = []
    total_cost = 0
    for cart_item in cart:
        product = Product.objects.filter(product_name = cart_item['product_name']).values_list('product_name', 'product_price', 'product_featureImage')
        quantity = cart_item['quantity']
        total_price = cart_item['total_price']
        total_cost += total_price
        order_detail = {
            "product_name": product[0][0],
            "product_price": product[0][1],
            "product_featureImage": product[0][2],
            "qty": quantity,
            "total_price": total_price,
        }
        order_products.append(order_detail)
    return order_products, total_cost


def addtocart(request):
    if request.method == "POST":
        if not 'cart' in request.session:
            request.session['cart'] = []
            request.session.set_expiry(1800)
        customer = request.POST.get('customer')

        if not customer:
            customer = None
        product = Product.objects.filter(pk = request.POST.get('product_id')).values_list('product_name', 'product_price')
        quantity = request.POST.get('quantity')

        if any(d['product_name'] == product[0][0] for d in request.session['cart']):
            cart_index = [i for i, d in enumerate(request.session['cart']) if product[0][0] in d.values()]
            qty = request.session['cart'][cart_index[0]]['quantity']
            qty += int(quantity)
            request.session['cart'][cart_index[0]]['total_price'] = float(product[0][1]) * int(qty)
            request.session.modified = True
            return HttpResponse("Successfully added to cart") 

        cart = {
            "customer": customer,
            "product_name": product[0][0],
            "quantity": int(quantity),
            "total_price": float(product[0][1]) * int(quantity)
        }
        request.session['cart'].append(cart)
        request.session.modified = True
        return HttpResponse("Successfully added to cart")
    else:
        if not 'cart' in request.session:
            return render(request, '404-page.html', {'error': "Session Time Out"})
        order_products, total_cost = get_from_cart(request.session['cart'])
        return render(request, "checkout.html", {"order_products": order_products, "total_cost": total_cost,})


def remove_from_cart(request):
    if request.method == "POST":
        request.session['cart'] = [i for i in request.session['cart'] if not (i['product_name'] == request.POST.get('productName'))]
        request.session.modified = True
        return HttpResponse("Successfully removed from cart")

@require_POST
def checkout(request):
    if request.method == "POST":
        cart = request.session['cart']
        updated_cart = request.POST.getlist('list[]')
        if len(cart) == len(updated_cart):
            for item in range(len(cart)):
                load_data = json.loads(updated_cart[item])
                updated_product_name = load_data['product_name']
                updated_qty = load_data['quantity']
                updated_totalprice = load_data['total_price']
                
                cart[item].update({'product_name': updated_product_name})
                cart[item].update({'quantity': int(updated_qty)})
                cart[item].update({'total_price': float(updated_totalprice)})
        request.session.modified = True
        return HttpResponse("Checkout Completed!")

def confirm_checkout(request, payment):
    delivery_form = DeliveryAddressForm()
    # if payment == "credit cards":
    #     payment_form = 
    if not 'cart' in request.session:
        return render(request, '404-page.html', {'error': "Session Time Out"})
    order_products, total_cost = get_from_cart(request.session['cart'])
    return render(request, "confirm_checkout.html", {"form": delivery_form, "cart": order_products, "total_cost": total_cost})

def search(request):
    if request.method == 'POST':
        srch = request.POST.get('search_result')
        if srch:
            match = Product.objects.all().order_by('brand_id').filter(product_name__icontains=srch).values('product_name', 'product_price', 'product_featureImage')
            if match:
                match_list = []
                for match in match:
                    match_list.append({"name": match['product_name'], "price": match['product_price'],
                                 "image": match['product_featureImage']})
                return render(request, 'search-results.html', {'sr': match_list})
    
    return render(request, 'search-results.html')



