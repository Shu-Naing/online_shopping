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
                  path('orders/success', views.order_success, name="order_success"),
                  path('addtocart/', views.addtocart, name="addtocart"),
                  path('removefromcart/', views.remove_from_cart, name="removefromCart"),
                  path('checkout/', views.checkout, name="checkout"),
                  path('checkout/<payment>', views.confirm_checkout, name="confirm_checkout"),
                  path('logout/', views.logout, name='logout'),
                  path('account/manageaccount', views.manageAccount, name="manage_account"),
                  path('shop/<category>/<sub__category>', views.shop, name="shop"),
                  path('account/manageaccount/confirm_email/', views.confirm_email, name="confirm_email"),
                  path('activate/<uidb64>/<token>/',views.activate, name='activate'),
                  path('account/manageaccount/manage_by_email/', views.manage_by_email, name = "manage_by_email"),
                  path('product/<product>', views.singleProduct, name = "single_product"),
                  path('about_us/', views.about_us, name = "about_us"),
                  path('faqs/', views.faqs, name = "faqs"),
                  path('search/', views.search, name="search"),
              ] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)