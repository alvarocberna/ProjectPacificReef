from django.urls import path
from .views import habitacion, registro, reservarHabitacion, confirmarReserva, addHabitacion , inicioSesion, inicio, perfil, habitaciones, verReservas, gestionarReservas, gestionarReserva, cerrarSesion, panel

urlpatterns = [
        path('', inicio),
        path('registro/', registro),
        path('inicioSesion/', inicioSesion),
        path('buscar-habitacion/', reservarHabitacion),
        path('habitaciones-disponibles/', reservarHabitacion),
        path('confirmar-reserva/<int:id>/', confirmarReserva, name='confirmarReserva'),
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