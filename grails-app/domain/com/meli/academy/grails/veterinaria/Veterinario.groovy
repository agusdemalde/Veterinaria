package com.meli.academy.grails.veterinaria

class Veterinario extends Persona {

	static hasMany = [especialidades:Especialidad]
	
}
