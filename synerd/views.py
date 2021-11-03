from django.shortcuts import render
from django.http import HttpResponse
from rest_framework.serializers import Serializer

# Create your views here.

def a_index(request):
    return render(request, 'index.html')

def a_register(request):
    return render(request, 'register.html')

def a_login(request):
    return render(request, 'login.html')

def a_dashboard(request):
    return render(request, 'dashboard.html')