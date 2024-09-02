from django.shortcuts import render
from .models import Habitacion

def habitacion(request):
    descripcion = Habitacion.objects.all()[0].descripcion_general
    capacidad = Habitacion.objects.all()[0].capacidad
    piso = Habitacion.objects.all()[0].piso
    equipamiento = Habitacion.objects.all()[0].equipamiento
    img_1 = Habitacion.objects.all()[0].img1_habitacion
    img_2 = Habitacion.objects.all()[0].img2_habitacion
    img_3 = Habitacion.objects.all()[0].img3_habitacion
    datos = { 
        'descripcion': descripcion,
        'capacidad': capacidad,
        'piso': piso,
        'equipamiento': equipamiento,
        'img_1': img_1,
        'img_2': img_2,
        'img_3': img_3

    }
    return render(request, 'habitacion.html', datos)