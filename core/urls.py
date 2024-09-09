from django.urls import path
from .views import habitacion, registro, inicioSesion, inicio, perfil, habitaciones 

urlpatterns = [
        path('habitaciones/', habitaciones),
        path('habitacion/<int:id>/', habitacion, name='habitacion'),
        path('registro/', registro),
        path('inicioSesion/', inicioSesion),
        path('', inicio),
        path('perfil/', perfil),
]