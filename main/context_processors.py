from .models import Customer
from django.shortcuts import get_object_or_404

def base(request):
    if 'customer' in request.session:
        customer = get_object_or_404(Customer, pk = request.session['customer'])
        customer_username = getattr(customer, 'customer_username')
        return {'customer': customer}
    return {}