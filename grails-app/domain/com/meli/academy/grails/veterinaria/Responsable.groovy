package com.meli.academy.grails.veterinaria

class Responsable extends Persona {

	String domicilio
	String ciudad
	String telefono
	
	static hasMany = [mascotas:Mascota]
	
    static constraints = {
		domicilio blank:false
		ciudad blank:false
		telefono matches:/\d+/, blank:false
    }
}
