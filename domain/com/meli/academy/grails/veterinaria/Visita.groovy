package com.meli.academy.grails.veterinaria

class Visita {

	Date fecha = new Date()
	String descripcion
	Mascota mascota
	
    static constraints = {
		descripcion blank:false
    }
}
