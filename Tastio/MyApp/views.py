from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login
from django.contrib import messages

# Create your views here.
def index(request):
  return render(request, 'index.html')

def loginView(request):
  return render(request, 'logIn.html')

def registerView(request):
  return render(request, 'register.html')


def register_user(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        
        # Ensure user doesn't already exist
        if User.objects.filter(username=username).exists():
            messages.error(request, "Username already exists.")
            return redirect('register')  # Change 'register' to your registration URL name

        # Create user
        user = User.objects.create_user(username=username, password=password)
        user.save()
        print(f"Username: {username}")  # Add this line before user creation
        messages.success(request, "Registration successful!")
        
        return redirect('loginView')  # Change 'login' to your login URL name

    return render(request, 'register.html')