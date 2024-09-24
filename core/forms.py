from django.forms import ModelForm
from django.contrib.auth.models import User
from .models import Hotel, Habitacion, Categoria_Habitacion, Reserva

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

class FormAddHabitacion(ModelForm):
    class Meta:
        model = Habitacion
        fields = ['cod_habitacion', 'descripcion_general', 'capacidad', 'piso', 'equipamiento', 'img1_habitacion', 'img2_habitacion', 'img3_habitacion', 'cod_categoria', 'cod_hotel']


class FormAddReserva(ModelForm):
    class Meta:
        model = Reserva
        fields = ['cod_reserva', 'fecha_ingreso', 'fecha_salida', 'cantidad_personas', 'rut', 'cod_habitacion']