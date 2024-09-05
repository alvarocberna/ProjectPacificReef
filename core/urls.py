from django.urls import path
from .views import habitacion, registro, inicioSesion, inicio, perfil 

urlpatterns = [
        path('habitaciones/', habitacion),
        path('registro/', registro),
        path('inicioSesion/', inicioSesion),
        path('', inicio),
        path('perfil/', perfil),
]