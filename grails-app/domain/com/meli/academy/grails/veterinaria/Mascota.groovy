package com.meli.academy.grails.veterinaria

class Mascota {
	
	String nombre
	Date fechaNacimiento
	Tipo tipo
	Responsable responsable
	
	static hasMany = [visitas:Visita]

    static constraints = {
		nombre blank:false, validator:{ nombre, mascota ->
			if(!mascota.id && mascota.responsable?.mascotas?.find {it.nombre == nombre}) {
				return 'mascota.duplicada'
			}
		}
    }
}
