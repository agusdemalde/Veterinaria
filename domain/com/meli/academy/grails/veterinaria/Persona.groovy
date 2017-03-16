package com.meli.academy.grails.veterinaria

class Persona {
	
	String nombre
	String apellido

    static constraints = {
		nombre blank:false
		apellido blank:false
    }
}
