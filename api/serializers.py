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

class serviceSerializer(serializers.ModelSerializer):
    class Meta:
        model = Service
        fields = ('__all__')

class organizationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Organization
        fields = ('__all__')