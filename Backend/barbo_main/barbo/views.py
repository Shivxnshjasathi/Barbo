from channels.generic.websocket import AsyncWebsocketConsumer
from django.contrib.auth import authenticate, login, logout, get_user_model
from django.contrib.auth.decorators import login_required
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import redirect, render
from rest_framework.response import Response
from django.core.mail import send_mail
from django.shortcuts import render
from .models import *
from django.conf import settings
import random
import secrets
import json

from rest_framework import generics, permissions
from django.contrib.auth.models import User
from rest_framework.response import Response
from rest_framework.authtoken.models import Token
from .models import Salon
from .serializers import *

# Create your views here.
# @login_required(login_url=reverse_lazy('login'))
def home(request):
            
    context = {}
    
    return render(request, 'barbo/home.html', context)

def generate_otp(email):
    otp = ''.join(random.choice('0123456789') for i in range(6))
    OTP.objects.update_or_create(email=email, defaults={'otp_code': otp})
    return otp

@csrf_exempt
def send_otp(request):
    if request.method == 'POST':
        email = request.POST.get('email')
        otp = generate_otp(email)
        
        # otp = OTP(email=email, otp_code=otp, api_key=api_key)
        # otp.save()
        
        send_mail(
            'Your OTP for Authentication',
            f'Your OTP is: {otp}',
            settings.EMAIL_HOST_USER,
            [email],
            fail_silently=False,
        )
        return JsonResponse({'message': 'OTP sent successfully'}, status=200)
    # return render(request, 'barbo/send_otp.html')
    return JsonResponse({'error': 'Invalid request'}, status=400)

@csrf_exempt
def verify_otp(request):
    if request.method == 'POST':
        otp_input = request.POST.get('otp')
        email = request.POST.get('email')
        try:
            saved_otp = OTP.objects.get(email=email)
            if otp_input == saved_otp.otp_code:
                # OTP is valid
                saved_otp.delete()
                
                api_key = secrets.token_urlsafe(32)                
                new_user = Client(email=email, api_key=api_key)
                new_user.save()
                
                return JsonResponse({'api_key': api_key, 'message': 'Registration successful'}, status=200)
            else:
                return JsonResponse({'error': 'Invalid otp'}, status=400)
        except OTP.DoesNotExist:
            return JsonResponse({'error': 'Invalid otp'}, status=400)
    return JsonResponse({'error': 'Invalid request'}, status=400)

class UserRegister(generics.CreateAPIView):
    queryset = User.objects.all()
    permission_classes = [permissions.AllowAny]

class SalonListCreate(generics.ListCreateAPIView):
    queryset = Salon.objects.all()
    serializer_class = SalonSerializer
    
class SearchConsumer(AsyncWebsocketConsumer):
    async def connect(self):
        await self.accept()

    async def disconnect(self, close_code):
        pass

    async def receive(self, text_data):
        search_term = json.loads(text_data)['search_term']
        results = self.search_salons(search_term)
        await self.send(text_data=json.dumps({'results': results}))

    def search_salons(self, search_term):
        results = Salon.objects.filter(name__icontains=search_term)
        return [{'name': salon.name, 'services': salon.services} for salon in results]
    
class CustomerDetail(generics.RetrieveAPIView):
    queryset = Customer.objects.all()
    serializer_class = CustomerSerializer
    permission_classes = [permissions.IsAuthenticated]

class UpcomingBookingsList(generics.ListAPIView):
    queryset = Booking.objects.filter(booking_date__gte=timezone.now())
    serializer_class = BookingSerializer
    permission_classes = [permissions.IsAuthenticated]

class CancelBooking(generics.DestroyAPIView):
    queryset = Booking.objects.all()
    serializer_class = BookingSerializer
    permission_classes = [permissions.IsAuthenticated]