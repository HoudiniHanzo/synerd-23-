from django.db import models
from datetime import date

from django.db.models.deletion import CASCADE

# Create your models here.

class UserInfo(models.Model):
    username = models.CharField(max_length=25, primary_key=True)
    first_name = models.CharField(max_length=25)
    middlename = models.CharField(max_length=25)
    last_name = models.CharField(max_length=25)
    email = models.CharField(max_length=25)
    address1 = models.CharField(max_length=25)
    address2 = models.CharField(max_length=25)
    city = models.CharField(max_length=25)
    state = models.CharField(max_length=25)
    zipcode = models.CharField(max_length=25)
    employer_name = models.CharField(max_length=25)

    def __str__(self):
        return self.username

class SubscriptionType(models.Model):
    subscriptiontypecode = models.CharField(max_length=25, primary_key=True)
    subscriptiontypename = models.CharField(max_length=25)

    def __str__(self):
        return self.subscriptiontypecode

class Service(models.Model):
    servicecode = models.CharField(max_length=25, primary_key=True)
    servicename = models.CharField(max_length=25)
    description = models.TextField(max_length=120)
    allocation = models.CharField(max_length=25)

    def __str__(self):
        return self.servicecode

class Office(models.Model):
    officecode = models.CharField(max_length=10, primary_key=True)
    officename = models.CharField(max_length=25)
    attribution = models.CharField(max_length=25)

    def __str__(self):
        return self.officecode

class Organization(models.Model):
    organization_code = models.CharField(max_length=10, primary_key=True)
    organization_name = models.CharField(max_length=25)
    description = models.TextField(max_length=120)
    date_joined = models.DateField(default=date.today, blank=True, null=True)
    address1 = models.CharField(max_length=25)
    address2 = models.CharField(max_length=25)
    city = models.CharField(max_length=25)
    state = models.CharField(max_length=25)
    zipcode = models.CharField(max_length=25)
    phone_number = models.CharField(max_length=25)

    def __str__(self):
        return self.organization_code
class TransferredSubscription(models.Model):
    transferID = models.CharField(max_length=10, primary_key=True)
    transfer_from = models.CharField(max_length=25)
    transfer_to = models.CharField(max_length=25)
    request_date = models.DateField(max_length=25, blank=True, null=True)
    transfer_date = models.DateField(max_length=25, blank=True, null=True)
    subscriberID = models.CharField(max_length=10)

    def __str__(self):
        return self.transferID

class Subscriber(models.Model):
    subscriberID = models.CharField(max_length=10, primary_key=True)
    username = models.CharField(max_length=25)
    subscriptiontypecode = models.CharField(max_length=25)
    servicecode = models.CharField(max_length=25)
    requestcode = models.CharField(max_length=25)
    startdate = models.DateField(default=date.today, blank=True, null=True)
    enddate = models.DateField(default=date.today, blank=True, null=True)
    motifofcancellation = models.CharField(max_length=25)
    beneficiaryID = models.CharField(max_length=10)

    def __str__(self):
        return self.subscriberID

class Officer(models.Model):
    officecode = models.CharField(max_length=10, primary_key=True)
    subscriberID = models.CharField(max_length=10)
    startdate = models.DateField(default=date.today, blank=True, null=True)
    enddate = models.DateField(default=date.today, blank=True, null=True)

    def __str__(self):
        return self.officecode

class OrganizedMember(models.Model):
    organization_code = models.CharField(max_length=10, primary_key=True)
    subscriberID = models.CharField(max_length=10)
    startdate = models.DateField(default=date.today, blank=True, null=True)
    enddate = models.DateField(default=date.today, blank=True, null=True)
    nativecountry = models.CharField(max_length=25)
    citizenship = models.CharField(max_length=25)
    isdelegate = models.CharField(max_length=25)

    def __str__(self):
        return self.organization_code