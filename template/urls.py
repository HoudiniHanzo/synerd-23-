from django.urls import path

from . import views
from django.contrib.staticfiles.urls import staticfiles_urlpatterns

urlpatterns = [
    path('', views.a_index, name='home'),
    path('index/', views.a_index, name='home'),
    path('register/', views.a_register, name='register'),
    path('login/', views.a_login, name='login'),
    path('dashboard/', views.a_dashboard, name='dashboard'),
]

urlpatterns += staticfiles_urlpatterns()