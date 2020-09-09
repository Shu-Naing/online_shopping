from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
from . import views

app_name = 'main'
urlpatterns = [
                  path('login/', views.login, name="login"),
                  path('registration/', views.registration, name="registration"),
                  path('', views.home, name="home"),
                  path('logout/', views.logout, name='logout'),
                  path('account/manageaccount', views.manageAccount, name="manage_account"),
                  path('shop/<sub__category>', views.shop, name="shop"),
              ] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)