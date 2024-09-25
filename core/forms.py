from django.forms import ModelForm
from django.contrib.auth.models import User
from .models import Hotel, Habitacion, Categoria_Habitacion, Reserva, User

class FormRegistro(ModelForm):
    class Meta:
        model = User
        fields = ['id', 'username', 'first_name', 'last_name', 'email', 'password']

class FormInicioSesion(ModelForm):
    class Meta:
        model = User
        fields = ['username', 'password']

class FormHabitacion(ModelForm):
    class Meta:
        model = Habitacion
        fields = ['cod_habitacion', 'descripcion_general', 'capacidad', 'piso', 'equipamiento',]


class FormAddReserva(ModelForm):
    class Meta:
        model = Reserva
        fields = ['cod_reserva', 'fecha_ingreso', 'fecha_salida', 'cantidad_personas', 'rut', 'cod_habitacion']


class FormDatosPersonales(ModelForm):
    class Meta:
        model = User
        fields = ['username', 'first_name', 'last_name', 'email']