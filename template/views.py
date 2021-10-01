from django.shortcuts import render

from django.http import HttpResponse

# Create your views here.

def a_index(request):
    return render(request, 'index.html')

def a_register(request):
    return render(request, 'register.html')

def a_login(request):
    return render(request, 'login.html')
