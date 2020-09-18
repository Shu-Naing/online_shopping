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
                'id': 'login-username',
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

class LoginForm(forms.Form):
    customer_email = forms.EmailField(
        max_length = 80,
        label = "Your Email",
        required = True,
        widget = forms.TextInput(
            attrs = {
                'class': 'form-input',
                'id': 'login-email',
                'type': 'email',
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

class DeliveryAddressForm(forms.Form):
    townships = (
        ("1", "Ahlon"), ("2", "Bahan"), ("3", "Botahtaung"),
        ("4", "Dagon"), ("5", "Dala"),  ("6", "Dawbon"),
        ("7", "East Dagon"), ("8", "Hlaing"), ("9", "HlaingThaYa"),
        ("10", "Insein"), ("11", "Kamayut"), ("12", "Kyauktada"),
        ("13", "Kyimyindaing"), ("14", "Lanmadaw"), ("15", "Latha"),
        ("16", "Mayangon"), ("17", "Mingala Taungnyunt"), ("18", "Mingaladon"),
        ("19", "North Dagon"), ("20", "North Oaklapa"), ("21", "Pabedan"),
        ("22", "Pazundaung"), ("23", "Sanchaung"), ("24", "Shwepyitha"),
        ("25", "South Dagon"), ("26", "South Oaklapa"), ("27", "Tamwe"),
        ("28", "Thaketa"), ("29", "Thingangyun"), ("30", "Yankin"),
    )
    firstname = forms.CharField(
        max_length = 40,
        required = True,
        label = "First Name",
        widget = forms.TextInput(
            attrs = {
                'class': 'form-input',
                'id': 'delivery-firstname',
                'data-constraints': '@Required',
            }
        )
    )

    lastname = forms.CharField(
        max_length = 40,
        required = True,
        label = "Last Name",
        widget = forms.TextInput(
            attrs = {
                'class': 'form-input',
                'id': 'delivery-lastname',
                'data-constraints': '@Required',
            }
        )
    )

    street_1 = forms.CharField(
        max_length = 150,
        required = True,
        label = "Street 1",
        widget =  forms.TextInput(
            attrs = {
                'class': 'form-input',
                'id': 'delivery-street-1',
                'data-constraints': '@Required',
            }
        )
    )
    
    street_2 = forms.CharField(
        max_length = 150,
        required = False,
        label = "Street 2 (Optional)",
        widget =  forms.TextInput(
            attrs = {
                'class': 'form-input',
                'id': 'delivery-street-2',
            }
        )
    )

    township = forms.ChoiceField(
        choices = townships,
        required = True,
        label = "Township",
        widget= forms.Select(
            attrs = {
                'class': 'form-input',
                'id': 'delivery-township',
                'data-minimum-results-for-search': 'Infinity',
                'data-constraints': "@Required",
            }
        )
    )

    phone = forms.IntegerField(
        required = True,
        label = "Phone",
        widget = forms.TextInput(
            attrs = {
                'class': 'form-input',
                'id': 'delivery-phone',
                'data-constraints': '@Numeric',
            }
        )
    )

# class PaymentVerificationForm(forms.Form):


