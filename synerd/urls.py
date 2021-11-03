"""synerd URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from . import views
from django.contrib.staticfiles.urls import staticfiles_urlpatterns

import api.urls as apiView

#import api.views as aViews

#router = routers.DefaultRouter()
#router.register('userinfo', aViews.userinfoView)
#router.register('subscriber', aViews.subscriberView)
#router.register('service', aViews.serviceView)
#router.register('organization', aViews.organizationView)

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.a_index, name='home'),
    path('register/', views.a_register, name='register'),
    path('login/', views.a_login, name='login'),
    path('dashboard/', views.a_dashboard, name='dashboard'),
    path('api/', include(apiView.router.urls), name='api'),
]