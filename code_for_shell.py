from django.db.models.fields
from backend.models import *

# Simple Insertion
# Requires the primary key or else will not function correctly.
# #
service1 = Service(servicecode='75469', servicename='UpDown Postal', description='The West Side packaging service.')
service2 = Service(servicecode='339988', servicename='JiDex Air', description='Some alternative postal service.')
service3 = Service(servicecode='556644', servicename='Xpress Inc', description='X means excellent!')
service1.save()
service2.save()
service3.save()

# Deleting Data
# Will delete service1.
# #
service1.delete()

# Updating Data and Updating Data with Queries
#
# This will add some rows to the Subscriber table but with missing keys. These keys
# can be updated manually or can be update by passing a query.
# 
# Subscribers 'Andy' and 'Bree' will have an updated to aService Query.
# 'Cooral' will have update to the bService Query.
# 
# Lastly, a manual update on 'Cooral' username.
# 
# #

# Queries
aService = Service.objects.get(servicecode='339988')
bService = Service.objects.get(servicecode='556644')

# Initiated Rows
Andy = Subscriber(subscriberID='1001', username='Andy123', subscriptiontypecode='23', requestcode='1001', startdate='2015-04-12', enddate=None,beneficiaryID='85006341')
Bree = Subscriber(subscriberID='1002', username='xxBree90xx', subscriptiontypecode='65', requestcode='2003', startdate='2011-07-22', motifofcancellation='', beneficiaryID='90045577')
Cooral = Subscriber(subscriberID='3456', username='Deh_Cooral67', subscriptiontypecode='41', requestcode='8009', startdate='2016-09-06', enddate='2020-08-31', motifofcancellation='Did not carry the 1.')

# Update with queries
Andy.servicecode = str(aService)
Bree.servicecode = str(bService)
Cooral.servicecode = str(aService)

# Update Manually
Cooral.username = 'Cooral_l33T'

# Commits
Andy.save()
Bree.save()
Cooral.save()

