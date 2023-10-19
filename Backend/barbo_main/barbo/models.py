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
    
class OTP(models.Model):
    email = models.EmailField(unique=True, null=True)
    otp_code = models.CharField(max_length=6, null=True)
    created_at = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return self.email