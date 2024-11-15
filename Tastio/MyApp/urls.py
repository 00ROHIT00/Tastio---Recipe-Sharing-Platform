from django.urls import path,include
from .views import custom_logout
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
    path('recipes/', views.recipeView, name='recipeView'),
    path('logout/', custom_logout, name='logout'),
    path('recipe/<int:id>/', views.recipe_detail, name='recipeDetail'),
    path('create', views.create, name='create'),
    path('panel', views.adminPanel, name='adminPanel'),   
    path('manage users/', views.manage_users_view, name='manage_users'),
    path('delete_user/', views.delete_user, name='delete_user'),
    path('manage recipes/', views.manage_recipes_view, name='manage_recipe'),
    path('delete_recipe/<int:recipe_id>/', views.delete_recipe, name='delete_recipe'),
    path('change-password/', views.change_password, name='change_password'),
    path('like/<int:recipe_id>/', views.like_recipe, name='like_recipe'),
    path('recipe/<int:id>/', views.recipe_detail, name='recipe_detail'),
    path('recipe/<int:recipe_id>/', views.recipe_detail, name='recipe_details'),
    path('recipe/<int:recipe_id>/comment/', views.add_comment, name='add_comment'),
]
