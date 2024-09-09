from django.shortcuts import render, redirect
from .models import Habitacion, UserProfile
from .forms import FormRegistro, FormInicioSesion
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login, logout
from django.db import IntegrityError

def habitacion(request, id):
    habitacion = Habitacion.objects.get(cod_habitacion = id)
    context = { 
        'habitacion': habitacion,
    }
    return render(request, 'habitacion.html', context)

def habitaciones(request):
    perfil = request.session.get('perfil')
    habitaciones = Habitacion.objects.all()
    context = {
        'habitaciones': habitaciones,
        'perfil': perfil,
    }
    return render(request, 'habitaciones.html', context)

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
                        profile = UserProfile.objects.create(user=user, role = 'Cliente')
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
            return redirect('/perfil')
    return render(request, 'inicioSesion.html', datos)

def inicio(request):
    return render(request, 'inicio.html')

def perfil(request):
    return render(request, 'perfil.html')