from django import forms
from .models import Customer

class RegistrationForm(forms.Form):
    customer_username = forms.CharField(
        max_length = 50, 
        required = True, 
        label = "Enter Username", 
        widget = forms.TextInput(
            attrs = {
                'class': 'form-input',
                'id': 'login-name',
                'data-constraints': '@Required'
            }
        )
    )
    customer_firstname = forms.CharField(
        max_length = 30, 
        required = False, 
        label = "First Name",
        widget = forms.TextInput(
            attrs = {
                'class': 'form-input',
                'id': 'login-firstname',
            }
        )
    )
    customer_lastname = forms.CharField(
        max_length=30, 
        required=False, 
        label = "Last Name",
        widget = forms.TextInput(
            attrs = {
                'class': 'form-input',
                'id': 'login-lastname',
            }
        )
    )
    customer_email = forms.EmailField(
        max_length=254, 
        label = "Email", 
        required = True,
        widget = forms.TextInput(
            attrs = {
                'class': 'form-input',
                'id': 'login-email',
                'data-constraints': '@Required',
            }
        )
    )
    customer_password = forms.CharField(
        max_length = 40, 
        required = True,
        label = "Password",
        widget = forms.TextInput(
            attrs = {
                'class': 'form-input',
                'id': 'login-password',
                'data-constraints': '@Required',
                'type': 'password'
            }
        )
    )

    class Meta:
        model = Customer
        fields = ('customer_username', 'customer_firstname', 'customer_lastname', 'customer_email', 'customer_password', )