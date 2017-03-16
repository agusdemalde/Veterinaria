package com.meli.academy.grails.veterinaria

class ClinicaController {

    def index() { }
	
	def tutorial() {}
	
	def veterinarios() {
		[veterinarios: Veterinario.list()]
	}
}
