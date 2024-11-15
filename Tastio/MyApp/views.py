from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login
from django.contrib import messages
from django.contrib.auth.decorators import login_required
import random
from django.core.mail import send_mail
from django.conf import settings
from django.contrib.auth.hashers import make_password
from django.contrib.auth import logout
from .models import *
from django.core.exceptions import ValidationError
from django.core.files.storage import FileSystemStorage
from django.shortcuts import render, get_object_or_404
from django.contrib.auth import update_session_auth_hash
from .models import Recipe, Like
# Create your views here.
def index(request):
  return render(request, 'index.html')

def loginView(request):
  return render(request, 'logIn.html')

def registerView(request):
  return render(request, 'register.html')

def profileView(request):
  return render(request, 'profile.html', {'user': request.user})

def forgotPasswordView(request):
   return render(request, 'forgotPass.html')

def resetView(request):
   return render(request, 'reset.html')

def recipeView(request):
    recipes = Recipe.objects.all()
    return render(request, 'recipes.html', {'recipes': recipes})

def recipe_detail(request, id):
    recipe = get_object_or_404(Recipe, id=id)
    user_like = False  # Default to not liked
    
    if request.user.is_authenticated:
        # Check if the user has liked this recipe
        user_like = Like.objects.filter(user=request.user, recipe=recipe).exists()

    # Pass both the recipe and like status to the template
    context = {
        'recipe': recipe,
        'user_like': user_like,
    }
    return render(request, 'recipeDetails.html', context)

def manage_users_view(request):
    users = User.objects.all()
    return render(request, 'manage_users.html', {'users': users})

def manage_recipes_view(request):
    recipes = Recipe.objects.all()
    return render(request, 'manage_recipes.html', {'recipes': recipes})

def delete_recipe(request, recipe_id):
    recipe = get_object_or_404(Recipe, id=recipe_id)
    recipe.delete()
    return redirect('manage_recipes')


def register_user(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        first_name = request.POST['firstName']
        last_name = request.POST['lastName']
        email = request.POST['email']
        confirm_password = request.POST.get('confirm_password')

        if not all([first_name, last_name, email, username, password, confirm_password]):
            messages.error(request, "All fields are required.")
            return redirect('register')
        
        if password != confirm_password:
            messages.error(request, "Passwords do not match.")
            return redirect('register')
        
        if User.objects.filter(username=username).exists():
            messages.error(request, "Username already exists.")
            return redirect('register')
        
        if User.objects.filter(email=email).exists():
            messages.error(request, "Email already in use.")
            return redirect('register')
        
        user = User.objects.create_user(
            username=username,
            password=password,
            first_name=first_name,
            last_name=last_name,
            email=email
        )
        user.save()

        messages.success(request, "Registration successful!")

    return render(request, 'register.html')

def login_user(request):
   if request.method == 'POST':
      username = request.POST['username']
      password = request.POST['password']

      user = authenticate(request, username=username, password=password)
      if user is not None:
         login(request, user)


         if username == 'admin' and password == 'admin':
            return redirect('adminPanel')
         
         return redirect('profileView')
      else:
         messages.error(request, "Invalid Username Or Password!")
   return render(request, 'login.html')




def generate_otp():
    return random.randint(100000, 999999)

def forgot_password(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        email = request.POST.get('email')

        try:
            user = User.objects.get(username=username, email=email)
            otp = generate_otp()  # Generate the OTP
            request.session['otp'] = otp  # Store OTP in session (you might want to use a more secure method)
            request.session['username'] = username  # Store username for later use
            
            # Send OTP to the user's email
            send_mail(
                'TASTIO! | Reset Password',
                f'Hey {username}, \nThis is your OTP code for resetting the password: {otp}.\n Thanks for using TASTiO!',

                settings.DEFAULT_FROM_EMAIL,
                [email],
                fail_silently=False,
            )
            
            return redirect('otp_verification')  # Redirect to OTP page

        except User.DoesNotExist:
            messages.error(request, 'Invalid username or email. Please try again.')

    return render(request, 'forgotPass.html')

def otp_verification(request):
    if request.method == 'POST':
        otp = request.POST.get('otp')
        session_otp = str(request.session.get('otp', ''))
        
        if otp == session_otp:
            return redirect('reset_password')
        else:
            messages.error(request, "Incorrect OTP. Please try again.")
            return redirect('otp_verification')  # Stay on the OTP page if incorrect

    return render(request, 'otp.html')

def reset_password(request):
    if request.method == 'POST':
        username = request.session.get('username')  # Get username from session
        password = request.POST.get('password')
        confirm_password = request.POST.get('ConfirmPassword')

        if password == confirm_password:
            try:
                user = User.objects.get(username=username)
                user.password = make_password(password)
                user.save()
                messages.success(request, "Password reset successful. Please log in with your new password.")
                return redirect('loginView')
            except User.DoesNotExist:
                messages.error(request, "User does not exist.")
        else:
            messages.error(request, "Passwords do not match.")
            
    return render(request, 'reset.html')
    
    

def custom_logout(request):
    logout(request)  # Log out the user
    messages.success(request, "You have been logged out successfully.")  # Add a success message
    return redirect('index')


def create(request):
    if request.method == 'POST':
        # Retrieve form data from the request
        recipe_name = request.POST['recipeName']
        category = request.POST['category']
        ingredients = request.POST['ingredients']
        description = request.POST['description']
        image = request.FILES.get('image')
        time = request.POST.get('time')  # New time field

        # Validate form fields, including time
        if not all([recipe_name, category, ingredients, description, image, time]):
            messages.error(request, "All fields are required.")
            return redirect('create')

        # Save image to the file system (if necessary)
        fs = FileSystemStorage()
        image_name = fs.save(image.name, image)
        image_url = fs.url(image_name)

        # Create and save the recipe object
        try:
            recipe = Recipe.objects.create(
                user=request.user,  # The logged-in user is the creator of the recipe
                recipe_name=recipe_name,
                category=category,
                ingredients=ingredients,
                description=description,
                image=image_url,
                time=time  # Store the time in the database
            )
            recipe.save()
            messages.success(request, "Recipe created successfully!")
            return redirect('recipeView')  # Redirect to the recipes page or the newly created recipe

        except ValidationError as e:
            messages.error(request, f"Error: {e}")
            return redirect('create')

    return render(request, 'create.html')

def adminPanel(request):
    return render(request, 'admin.html')

def delete_user(request):
    if request.method == "POST":
        user_id = request.POST.get('user_id')
        try:
            user = User.objects.get(id=user_id)
            user.delete()
            messages.success(request, "User deleted successfully.")
        except User.DoesNotExist:
            messages.error(request, "User does not exist.")
    return redirect('manage_users')

@login_required
def change_password(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        new_password = request.POST.get('password')
        confirm_password = request.POST.get('ConfirmPassword')
        
        # Check if the user exists and the passwords match
        if username == request.user.username:
            if new_password == confirm_password:
                user = User.objects.get(username=username)
                user.set_password(new_password)
                user.save()
                update_session_auth_hash(request, user)  # Keeps the user logged in after password change
                messages.success(request, 'Your password was successfully updated!')
                return redirect('profileView')
            else:
                messages.error(request, 'Passwords do not match.')
        else:
            messages.error(request, 'Username does not match the logged-in user.')
    
    return render(request, 'changePass.html')


@login_required
def like_recipe(request, recipe_id):
    recipe = get_object_or_404(Recipe, id=recipe_id)
    like, created = Like.objects.get_or_create(user=request.user, recipe=recipe)

    if not created:
        # If the like already exists, remove it (unlike)
        like.delete()

    return redirect('recipe_detail', recipe_id=recipe.id)



