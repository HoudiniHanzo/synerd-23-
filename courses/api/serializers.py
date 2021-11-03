from rest_framework import serializers
from backend.models import *

class userinfoSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserInfo
        fields = ('__all__')

class subscriberSerializer(serializers.ModelSerializer):
    class Meta:
        model = Subscriber
        fields = ('__all__')