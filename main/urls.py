from django.urls import path
from . import views

app_name = 'main'
urlpatterns = [
    path('login/', views.login, name = "login"),
    path('registration/', views.registration, name = "registration"),
    path('home/', views.home, name = "home")
]
