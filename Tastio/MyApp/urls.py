from django.urls import path,include
from . import views

urlpatterns = [
    path('', views.index, name="index"),
    path('loginView', views.loginView, name="loginView"),
    path('registerView', views.registerView, name="registerView"),
    path('register/', views.register_user, name='register'),
    path('profile/', views.profileView, name='profileView'),
    path('login/', views.login_user, name='loginView'),
]