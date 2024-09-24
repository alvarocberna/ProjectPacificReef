from django.shortcuts import render, redirect
from .models import Habitacion, UserProfile, Hotel, Categoria_Habitacion, Reserva
from .forms import FormRegistro, FormInicioSesion, FormHabitacion, FormAddHabitacion
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login, logout
from django.db import IntegrityError
from django.utils import timezone
from datetime import datetime
from django.contrib import messages

def base(request):
    usuario = request.user
    profile = UserProfile.objects.get(user = usuario)
    rol = profile.role
    context = {
        'rol': rol,
    }
    return render(request, 'base.html', context)


def registro(request):
    datos = {
        'form': FormRegistro()
    }
    datosErr1 = {
        'form': FormRegistro(),
        'error': "Las contraseñas no coinciden"
    }
    datosErr2 = {
        'form': FormRegistro(),
        'error': "La contraseña debe tener sobre 5 caracteres"
    }
    datosErr3 = {
        'form': FormRegistro(),
        'error': "La contraseña no puede tener más de 20 caracteres"
    }
    if request.method == 'GET':
            return render(request, 'registro.html', datos)
    else:
        if request.POST["password"] == request.POST["password2"]:
            if len(request.POST["password"]) > 5:
                if len(request.POST["password"]) < 21:
                    try:
                        user = User.objects.create_user(id=request.POST["rut"],
                                                        username=request.POST["username"],
                                                        first_name=request.POST["first_name"],
                                                        last_name=request.POST["last_name"],
                                                        email=request.POST["email"],
                                                        password=request.POST["password"],
                                                        )
                        user.save()
                        profile = UserProfile.objects.create(user=user, role = 'cliente')
                        profile.save()                      
                        return redirect('/')
                    except IntegrityError:
                        return render(request, 'registro.html', datos)
                else:
                    return render(request, 'registro.html', datosErr3)
            else:
                return render(request, 'registro.html', datosErr2)
        else:
            return render(request, 'registro.html', datosErr1)
        

def inicioSesion(request):
    datos = {
        'form': FormInicioSesion()
    }
    datosErr = {
        'form': FormInicioSesion(),
        'error': "Usuario o contraseña incorrectos."
    }
    if request.method == 'POST':
        usuario = authenticate(request, username=request.POST['username'], password=request.POST['password'])
        if usuario is None:
            return render(request, 'inicioSesion.html', datosErr)
        else:
            profile = UserProfile.objects.get(user=usuario)
            request.session['perfil'] = profile.role
            login(request, usuario)
            if profile.role == 'admin':
                return redirect('/panel')
            else:
                return redirect('/perfil')
    return render(request, 'inicioSesion.html', datos)

def inicio(request):
    return render(request, 'inicio.html')

def reservarHabitacion(request):
    usuario = request.user
    rol = UserProfile.objects.get(user = usuario).role
    if request.method == 'POST':
        # Obtenemos la fecha del formulario
        fechaIngresoInput = request.POST["dateIngreso"]
        fechaSalidaInput = request.POST["dateSalida"]
        # Convertirmos la fecha a un objeto datetime
        fechaIngresoFormat = datetime.strptime(fechaIngresoInput, '%Y-%m-%d')
        fechaSalidaFormat = datetime.strptime(fechaSalidaInput, '%Y-%m-%d')
        # Le damos un formato específico a las fechas
        fechaIngreso = fechaIngresoFormat.strftime('%d-%m-%Y')
        fechaSalida = fechaSalidaFormat.strftime('%d-%m-%Y')
        # asignamos a las variables de sesion el valor de fecha ingreso y salida
        request.session['fecha_ingreso'] = fechaIngresoFormat.strftime('%Y-%m-%d')
        request.session['fecha_salida'] = fechaSalidaFormat.strftime('%Y-%m-%d')
        # Obtenemos las habitaciones que ya estén reservadas
        numHabReservadas = []
        for res in Reserva.objects.all():
            if ((fechaIngreso <= res.fecha_ingreso.strftime('%d-%m-%Y')) and (fechaSalida >= res.fecha_salida.strftime('%d-%m-%Y'))):
                numHabReservadas.append(res.cod_habitacion)
            elif ((fechaIngreso >= res.fecha_ingreso.strftime('%d-%m-%Y')) and (fechaIngreso <= res.fecha_salida.strftime('%d-%m-%Y'))):
                numHabReservadas.append(res.cod_habitacion)
            elif ((fechaSalida >= res.fecha_ingreso.strftime('%d-%m-%Y')) and (fechaSalida <= res.fecha_salida.strftime('%d-%m-%Y'))):
                numHabReservadas.append(res.cod_habitacion)
        habDisponibles = []
        for hab in Habitacion.objects.all():
            habDisponibles.append(hab)
        for hab in habDisponibles:
            for num in numHabReservadas:
                if hab.cod_habitacion == num.cod_habitacion:
                    habDisponibles.remove(hab)         
        context = {
            'usuario': usuario,
            'rol': rol,
            'fechaInicio': fechaIngreso,
            'fechaSalida': fechaSalida,
            'numHabReservadas': numHabReservadas,
            'habDisponibles': habDisponibles,
        }
        return render(request, 'cliente/habitaciones-disponibles.html', context)
    else:
        context = {
            'usuario': usuario,
            'rol': rol,
        }
        return render(request, 'cliente/buscar-habitacion.html', context)
    
def confirmarReserva(request, id):
    usuario = request.user
    rol = UserProfile.objects.get(user = usuario).role
    habitacion = Habitacion.objects.get(cod_habitacion = id)
    #campos de nueva reserva
    fechaIngreso = request.session.get('fecha_ingreso')
    fechaSalida = request.session.get('fecha_salida')
    rut = User.objects.get(pk=usuario.id) 
    cod_habitacion = Habitacion.objects.get(pk=id)
    context = {
        'fechaIngreso': fechaIngreso,
        'fechaSalida': fechaSalida,
        'habitacion': habitacion,
        'usuario': usuario,
        'rol': rol,
    }
    if request.method == 'POST':
        newReserva = Reserva.objects.create(
                        fecha_ingreso = fechaIngreso,
                        fecha_salida = fechaSalida,
                        cantidad_personas = habitacion.capacidad,
                        rut = rut,
                        cod_habitacion = cod_habitacion,
        )
        newReserva.save()
        return redirect('/mis-reservas')
    return render(request, 'cliente/confirmar-reserva.html', context)

def habitacion(request, id):
    habitacion = Habitacion.objects.get(cod_habitacion = id)
    usuario = request.user
    rol = UserProfile.objects.get(user = usuario).role
    context = { 
        'habitacion': habitacion,
        'usuario': usuario,
        'rol': rol,
    }
    if request.method == 'POST':
        formulario = FormHabitacion(data=request.POST, instance=habitacion)
        if formulario.is_valid:
            formulario.save() 
    return render(request, 'cliente/habitacion.html', context)

def addHabitacion(request):
    usuario = request.user
    rol = UserProfile.objects.get(user = usuario).role
    context = { 
        'usuario': usuario,
        'rol': rol,
    }
    if request.method == 'POST':
        hotel = Hotel.objects.get(pk=1)
        if request.POST["cod_categoria"] == 1:
            categoria = Categoria_Habitacion.objects.get(pk=1)
        else:
            categoria = Categoria_Habitacion.objects.get(pk=2)
        newHabitacion = Habitacion.objects.create(
                                                    cod_habitacion = request.POST["cod_habitacion"],
                                                    descripcion_general = request.POST["descripcion_general"],
                                                    capacidad = request.POST["capacidad"],
                                                    piso = request.POST["piso"],
                                                    equipamiento = request.POST["equipamiento"],
                                                    img1_habitacion = request.POST["img1_habitacion"],
                                                    img2_habitacion = request.POST["img2_habitacion"],
                                                    img3_habitacion = request.POST["img3_habitacion"],
                                                    cod_hotel = hotel,
                                                    cod_categoria = categoria,
                                                )
        newHabitacion.save()
    return render(request, 'admin/addhabitacion.html', context)


def habitaciones(request):
    usuario = request.user
    rol = UserProfile.objects.get(user = usuario).role
    habitaciones = Habitacion.objects.all()
    context = {
        'habitaciones': habitaciones,
        'usuario': usuario,
        'rol': rol,
    }
    return render(request, 'cliente/habitaciones.html', context)

def verReservas(request):
    usuario = request.user
    rol = UserProfile.objects.get(user = usuario).role
    reservas = Reserva.objects.filter(rut = usuario.id)
    context = {
        'rol': rol,
        'reservas': reservas,
    }
    return render(request, 'cliente/reservas.html', context)

def gestionarReservas(request):
    usuario = request.user
    rol = UserProfile.objects.get(user = usuario).role
    context = {
        'rol': rol,
    }
    return render(request, 'admin/reservas.html', context)

def gestionarReserva(request):
    usuario = request.user
    rol = UserProfile.objects.get(user = usuario).role
    context = {
        'rol': rol,
    }
    return render(request, 'admin/reserva.html', context)

def perfil(request):
    usuario = request.user
    rol = UserProfile.objects.get(user = usuario).role
    context = {
        'usuario': usuario,
        'rol': rol,
    }
    return render(request, 'cliente/perfil.html', context)

def panel(request):
    usuario = request.user
    rol = UserProfile.objects.get(user = usuario).role
    context = {
        'rol': rol
    }
    return render(request, 'admin/panel.html', context)

def cerrarSesion(request):
    logout(request)
    return redirect('/')