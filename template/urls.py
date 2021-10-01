from django.urls import path

from . import views
from django.contrib.staticfiles.urls import staticfiles_urlpatterns

urlpatterns = [
    path('', views.a_index),
    path('register/', views.a_register),
]

urlpatterns += staticfiles_urlpatterns()