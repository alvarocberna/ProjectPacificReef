from django.urls import path
from .views import habitacion, registro, reservarHabitacion, confirmarReserva, addHabitacion , inicioSesion, inicio, perfil, habitaciones, verReservas, gestionarReservas, gestionarReserva, cerrarSesion, panel, delHabitacion, delReserva

urlpatterns = [
        #Visita       
        path('', inicio),
        path('registro/', registro),
        path('inicioSesion/', inicioSesion),
        #Cliente
        path('buscar-habitacion/', reservarHabitacion),
        path('habitaciones-disponibles/', reservarHabitacion),
        path('confirmar-reserva/<int:id>/', confirmarReserva, name='confirmarReserva'),
        path('mis-reservas/', verReservas),
        path('perfil/', perfil),
        #Administrador
        path('habitaciones/', habitaciones),
        path('habitacion/<int:id>/', habitacion, name='habitacion'),
        path('add-habitacion/', addHabitacion),
        path('delhabitacion/<int:id>/', delHabitacion, name='delHabitacion'),
        path('delReserva/<int:id>/', delReserva, name='delReserva'),
        path('reservas/', gestionarReservas),
        path('reserva/<int:id>', gestionarReserva, name='gestionarReserva'),
        path('panel/', panel),
        path('cerrarSesion', cerrarSesion)
]