from channels.generic.websocket import AsyncWebsocketConsumer
import json
from .models import Salon

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
