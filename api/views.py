from rest_framework import viewsets
from backend.models import *
from .serializers import *
from api.serializers import *

class userinfoView(viewsets.ModelViewSet):
    queryset = UserInfo.objects.all()
    serializer_class = userinfoSerializer

class subscriberView(viewsets.ModelViewSet):
    queryset = Subscriber.objects.all()
    serializer_class = subscriberSerializer

class serviceView(viewsets.ModelViewSet):
    queryset = Service.objects.all()
    serializer_class = serviceSerializer

class organizationView(viewsets.ModelViewSet):
    queryset = Organization.objects.all()
    serializer_class = organizationSerializer