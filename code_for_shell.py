from django.db.models.fields import NullBooleanField
from polls.models import *

# Simple Insertion
# Requires the primary key or else will not function correctly.
# #
Andy = Subscriber(subscriberID='1001', username='Andy349', subscriptiontypecode='159357', servicecode='10', requestcode='1001', startdate='2015-04-12', enddate=None, motifofcancellation='', beneficiaryID='85006341')
Bree = Subscriber(subscriberID='1002', username='Bree782', subscriptiontypecode='111222', servicecode='10', requestcode='2003', startdate='2011-07-22', motifofcancellation='', beneficiaryID='90045577')
Cooral = Subscriber(subscriberID='3456', username='Cooral258', subscriptiontypecode='446688', servicecode='45', requestcode='8009', startdate='2016-09-06', enddate='2020-08-31', motifofcancellation='Did not carry the 1.')
Andy.save()
Bree.save()
Cooral.save()

# Updating Data
# #
transfer1 = TransferredSubscription(transferID='1212', transfer_from='Place A', transfer_to='Place B', request_date='2005-5-16', transfer_date='2006-6-16', subscriberID='1001')
transfer2 = TransferredSubscription(transferID='1313', transfer_from='Place C', transfer_to='Place D', request_date='2006-6-17', transfer_date='2006-8-18', subscriberID='3456')
transfer1.save()
transfer2.save()
transfer1.transfer_from = 'Place E'
transfer1.transfer_to = 'Place F'
transfer1.save()

