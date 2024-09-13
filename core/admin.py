from django.contrib import admin

from .models import Hotel, Habitacion, Categoria_Habitacion, UserProfile, Reserva

admin.site.register(Hotel)
admin.site.register(Habitacion)
admin.site.register(Categoria_Habitacion)
admin.site.register(UserProfile)
admin.site.register(Reserva)