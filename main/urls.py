from django.urls import path
from . import views

app_name = 'main'
urlpatterns = [
    path('login/', views.login, name = "login"),
    path('registration/', views.registration, name = "registration"),
    path('', views.home, name = "home"),
    path('logout/', views.logout, name = 'logout'),
    path('account/manageaccount', views.manageAccount, name = "manage_account"),
]
