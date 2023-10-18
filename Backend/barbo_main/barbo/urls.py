from rest_framework.authtoken.views import obtain_auth_token
from django.contrib.auth import views as auth_views
from django.contrib.auth.views import LogoutView
from django.urls import path
from . import views

urlpatterns = [
    
    path('', views.home, name="home"),
    path('send-otp/', views.send_otp, name='send_otp'),
    path('verify-otp/', views.verify_otp, name='verify_otp'),
    path('api-token-auth/', obtain_auth_token, name='api_token_auth'),
]