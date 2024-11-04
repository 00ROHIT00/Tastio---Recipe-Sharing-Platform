from django.urls import path,include
from . import views

urlpatterns = [
    path('', views.index, name="index"),
    path('loginView', views.loginView, name="loginView"),
    path('registerView', views.registerView, name="registerView"),
    path('register/', views.register_user, name='register'),
    path('profile/', views.profileView, name='profileView'),
    path('login/', views.login_user, name='loginView'),
    path('forgot-password/', views.forgot_password, name='forgot_password'),
    path('otp/', views.otp_verification, name='otp_verification'),
    path('reset/', views.reset_password, name='reset_password'),
]
