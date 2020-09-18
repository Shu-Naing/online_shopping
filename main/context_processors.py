from .models import Customer, Category
from django.shortcuts import get_object_or_404

def base(request):
    category_list = list()
    category_name = Category.objects.distinct().values('category_name')
    for category in category_name:
        lop_list = list()
        query1 = Category.objects.filter(category_name=category['category_name'])
        for sub_cat in query1.values('sub_category'):
            lop_list.append(sub_cat)
        category_list.append({"Name": category['category_name'], "Sub_Name": lop_list})

    cart = []
    if 'cart' in request.session:
        cart = request.session['cart']

    if 'customer' in request.session:
        customer = get_object_or_404(Customer, pk = request.session['customer'])
        customer_username = getattr(customer, 'customer_username')
        return {'customer': customer, 'context': category_list, 'cart': cart, 'host': request.get_host()}
    return {'context': category_list, 'cart': cart, 'host': request.get_host()}