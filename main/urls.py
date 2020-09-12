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
                  path('account/manageaccount/confirm_email/', views.confirm_email, name="confirm_email"),
                  path('activate/<uidb64>/<token>/',views.activate, name='activate'),
                  path('account/manageaccount/manage_by_email/', views.manage_by_email, name = "manage_by_email"),
                  path('product/<product>', views.singleProduct, name = "single_product"),
                  path('search/', views.search, name="search"),
              ] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)