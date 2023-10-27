from django.contrib.auth.models import User
from django.utils import timezone
from django.db import models

# Create your models here.
class Client(models.Model):
    id = models.AutoField(primary_key=True)
    api_key = models.CharField(max_length=64, default="")
    email = models.CharField(max_length=200, null=True, default="")
    date_created = models.DateTimeField(auto_now_add=True, null=True)

    def __str__(self):
        return str(self.email)
    
class Salon(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=64, default="")
    email = models.CharField(max_length=200, null=True, default="")
    date_created = models.DateTimeField(auto_now_add=True, null=True)

    def __str__(self):
        return str(self.email)
    
class OTP(models.Model):
    email = models.EmailField(unique=True, null=True)
    otp_code = models.CharField(max_length=6, null=True)
    created_at = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return self.email
    
class Customer(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    phone_number = models.CharField(max_length=15)
    # Add other customer-related fields

class Booking(models.Model):
    customer = models.ForeignKey(Customer, on_delete=models.CASCADE)
    salon = models.ForeignKey(Salon, on_delete=models.CASCADE)
    booking_date = models.DateTimeField()