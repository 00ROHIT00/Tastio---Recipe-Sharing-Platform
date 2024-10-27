from django.shortcuts import render

# Create your views here.
def index(request):
  return render(request, 'index.html')

def loginView(request):
  return render(request, 'logIn.html')

def registerView(request):
  return render(request, 'register.html')