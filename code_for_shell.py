from django.db.models.fields import NullBooleanField
from backend.models import *

# Simple Insertion
# Requires the primary key or else will not function correctly.
# #
Andy = Subscriber(subscriberID='1001', username='Andy349', subscriptiontypecode='159357', servicecode='10', requestcode='1001', startdate='2015-04-12', enddate=None, motifofcancellation='', beneficiaryID='85006341')
Bree = Subscriber(subscriberID='1002', username='Bree782', subscriptiontypecode='111222', servicecode='10', requestcode='2003', startdate='2011-07-22', motifofcancellation='', beneficiaryID='90045577')
Cooral = Subscriber(subscriberID='3456', username='Cooral258', subscriptiontypecode='446688', servicecode='45', requestcode='8009', startdate='2016-09-06', enddate='2020-08-31', motifofcancellation='Did not carry the 1.')
Andy.save()
Bree.save()
Cooral.save()

# Deleting Data
# Adds services1 and services2. Then will delete service1.
# #
service1 = Service(servicecode='75469', servicename='UpDown Postal', description='The West Side packaging service.')
service2 = Service(servicecode='339988', servicename='JiDex Air', description='Some alternative postal service.')
service1.save()
service2.save()
service1.delete()

# Updating Data
# Updates transfer1's columns to 'Place A' and 'Place B' to 'Place E' and 'Place F'
# #
transfer1 = TransferredSubscription(transferID='1212', transfer_from='Place A', transfer_to='Place B', request_date='2005-5-16', transfer_date='2006-6-16', subscriberID='1001')
transfer2 = TransferredSubscription(transferID='1313', transfer_from='Place C', transfer_to='Place D', request_date='2006-6-17', transfer_date='2006-8-18', subscriberID='3456')
transfer1.save()
transfer2.save()
transfer1.transfer_from = 'Place E'
transfer1.transfer_to = 'Place F'
transfer1.save()

# Other Updating
# Updating Subscribers servicecode for current services.
# #
Andy.servicecode = str(service2)
Bree.servicecode = str(service2)
Andy.save()
Bree.save()