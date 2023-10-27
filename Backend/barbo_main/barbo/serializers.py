# serializers.py
from rest_framework import serializers
from django.contrib.auth.models import User
from rest_framework.authtoken.models import Token
from . models import * 

class SalonSerializer(serializers.ModelSerializer):
    class Meta:
        model = Salon
        fields = '__all__'
        
class CustomerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Customer
        fields = ('user', 'phone_number',)

class BookingSerializer(serializers.ModelSerializer):
    class Meta:
        model = Booking
        fields = ('customer', 'salon', 'booking_date',) 