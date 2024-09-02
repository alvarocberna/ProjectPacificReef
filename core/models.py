from django.db import models
# from django.contrib.auth import get_user_model
# from django.conf import settings
# from django.contrib.auth.models import User

class Hotel(models.Model):
    cod_hotel = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=50)
    direccion = models.CharField(max_length=200)

    class Meta:
        managed = False
        db_table = 'core_hotel'


class Categoria_Habitacion(models.Model):
    cod_categoria = models.IntegerField(primary_key=True)
    descripcion_categoria = models.CharField(max_length=50)
    precio = models.IntegerField()


class Habitacion(models.Model):
    cod_habitacion = models.IntegerField(primary_key=True)
    descripcion_general = models.CharField(max_length=300)
    capacidad = models.IntegerField()
    piso = models.IntegerField()
    equipamiento = models.CharField(max_length=300)
    img1_habitacion = models.ImageField(upload_to="habitaciones", null=True)
    img2_habitacion = models.ImageField(upload_to="habitaciones", null=True)
    img3_habitacion = models.ImageField(upload_to="habitaciones", null=True)
    cod_hotel = models.ForeignKey(Hotel,  on_delete=models.CASCADE, db_column='cod_hotel')
    cod_categoria = models.ForeignKey(Categoria_Habitacion, on_delete=models.CASCADE, db_column='cod_categoria')


# class TipoUsuario(models.Model):
#     cod_tipo_usuario = models.IntegerField(primary_key=True)
#     descripcion_usuario = models.CharField(max_length=50)


# class Usuario(models.Model):
#     rut = models.IntegerField(primary_key=True)
#     dv_rut = models.CharField(max_length=1)
#     nombre = models.CharField(max_length=50)
#     ap_paterno = models.CharField(max_length=50)
#     ap_materno = models.CharField(max_length=50)
#     correo = models.CharField(max_length=100)
#     celular = models.IntegerField()
#     pais = models.CharField(max_length=50, blank=True, null=True)
#     idioma = models.CharField(max_length=50, blank=True, null=True)
#     cod_tipo_usuario = models.ForeignKey(TipoUsuario, on_delete=models.CASCADE, db_column='cod_tipo_usuario')
        

# class Reserva(models.Model):
#     cod_reserva = models.IntegerField(primary_key=True)
#     fecha_ingreso = models.DateField()
#     fecha_salida = models.DateField()
#     cantidad_personas = models.IntegerField()
#     rut = models.ForeignKey(Usuario, on_delete=models.CASCADE, db_column='rut')
#     cod_habitacion = models.ForeignKey(Habitacion, on_delete=models.CASCADE, db_column='cod_habitacion')
