from django.contrib import admin
from django.urls import path, include
from . import views
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from rest_framework import routers

router = routers.DefaultRouter()
router.register('userinfo', views.userinfoView)
router.register('subscriber', views.subscriberView)
router.register('service', views.serviceView)
router.register('organization', views.organizationView)