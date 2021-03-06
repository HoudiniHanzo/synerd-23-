# Generated by Django 3.2.9 on 2021-11-02 20:03

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Office',
            fields=[
                ('officecode', models.CharField(max_length=10, primary_key=True, serialize=False)),
                ('officename', models.CharField(max_length=25)),
                ('attribution', models.CharField(max_length=25)),
            ],
        ),
        migrations.CreateModel(
            name='Officer',
            fields=[
                ('officecode', models.CharField(max_length=10, primary_key=True, serialize=False)),
                ('subscriberID', models.CharField(max_length=10)),
                ('startdate', models.DateField(blank=True, default=datetime.date.today, null=True)),
                ('enddate', models.DateField(blank=True, default=datetime.date.today, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Organization',
            fields=[
                ('organization_code', models.CharField(max_length=10, primary_key=True, serialize=False)),
                ('organization_name', models.CharField(max_length=25)),
                ('description', models.TextField(max_length=120)),
                ('date_joined', models.DateField(blank=True, default=datetime.date.today, null=True)),
                ('address1', models.CharField(max_length=25)),
                ('address2', models.CharField(max_length=25)),
                ('city', models.CharField(max_length=25)),
                ('state', models.CharField(max_length=25)),
                ('zipcode', models.CharField(max_length=25)),
                ('phone_number', models.CharField(max_length=25)),
            ],
        ),
        migrations.CreateModel(
            name='OrganizedMember',
            fields=[
                ('organization_code', models.CharField(max_length=10, primary_key=True, serialize=False)),
                ('subscriberID', models.CharField(max_length=10)),
                ('startdate', models.DateField(blank=True, default=datetime.date.today, null=True)),
                ('enddate', models.DateField(blank=True, default=datetime.date.today, null=True)),
                ('nativecountry', models.CharField(max_length=25)),
                ('citizenship', models.CharField(max_length=25)),
                ('isdelegate', models.CharField(max_length=25)),
            ],
        ),
        migrations.CreateModel(
            name='Service',
            fields=[
                ('servicecode', models.CharField(max_length=25, primary_key=True, serialize=False)),
                ('servicename', models.CharField(max_length=25)),
                ('description', models.TextField(max_length=120)),
                ('allocation', models.CharField(max_length=25)),
            ],
        ),
        migrations.CreateModel(
            name='Subscriber',
            fields=[
                ('subscriberID', models.CharField(max_length=10, primary_key=True, serialize=False)),
                ('username', models.CharField(max_length=25)),
                ('subscriptiontypecode', models.CharField(max_length=25)),
                ('servicecode', models.CharField(max_length=25)),
                ('requestcode', models.CharField(max_length=25)),
                ('startdate', models.DateField(blank=True, default=datetime.date.today, null=True)),
                ('enddate', models.DateField(blank=True, default=datetime.date.today, null=True)),
                ('motifofcancellation', models.CharField(max_length=25)),
                ('beneficiaryID', models.CharField(max_length=10)),
            ],
        ),
        migrations.CreateModel(
            name='SubscriptionType',
            fields=[
                ('subscriptiontypecode', models.CharField(max_length=25, primary_key=True, serialize=False)),
                ('subscriptiontypename', models.CharField(max_length=25)),
            ],
        ),
        migrations.CreateModel(
            name='TransferredSubscription',
            fields=[
                ('transferID', models.CharField(max_length=10, primary_key=True, serialize=False)),
                ('transfer_from', models.CharField(max_length=25)),
                ('transfer_to', models.CharField(max_length=25)),
                ('request_date', models.DateField(blank=True, max_length=25, null=True)),
                ('transfer_date', models.DateField(blank=True, max_length=25, null=True)),
                ('subscriberID', models.CharField(max_length=10)),
            ],
        ),
        migrations.CreateModel(
            name='UserInfo',
            fields=[
                ('username', models.CharField(max_length=25, primary_key=True, serialize=False)),
                ('first_name', models.CharField(max_length=25)),
                ('middlename', models.CharField(max_length=25)),
                ('last_name', models.CharField(max_length=25)),
                ('email', models.CharField(max_length=25)),
                ('address1', models.CharField(max_length=25)),
                ('address2', models.CharField(max_length=25)),
                ('city', models.CharField(max_length=25)),
                ('state', models.CharField(max_length=25)),
                ('zipcode', models.CharField(max_length=25)),
                ('employer_name', models.CharField(max_length=25)),
            ],
        ),
    ]
