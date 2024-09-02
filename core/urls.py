from django.urls import path
from .views import habitacion

urlpatterns = [
        path('', habitacion),
]