from django.urls import path
from .views import habitacion, registro, addHabitacion , inicioSesion, inicio, perfil, habitaciones, verReservas, gestionarReservas, gestionarReserva, cerrarSesion, panel

urlpatterns = [
        path('', inicio),
        path('registro/', registro),
        path('inicioSesion/', inicioSesion),
        path('habitaciones/', habitaciones),
        path('add-habitacion/', addHabitacion),
        path('habitacion/<int:id>/', habitacion, name='habitacion'),
        # path('delhabitacion/<int:id>/', delHabitacion, name='delHabitacion'),
        path('mis-reservas/', verReservas),
        path('reservas/', gestionarReservas),
        path('reserva/<int:id>', gestionarReserva, name='gestionarReserva'),
        path('perfil/', perfil),
        path('panel/', panel),
        path('cerrarSesion', cerrarSesion)
]