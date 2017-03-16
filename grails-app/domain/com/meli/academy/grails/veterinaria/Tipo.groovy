package com.meli.academy.grails.veterinaria

class Tipo {
	
	String nombre

    static constraints = {
		
		nombre blank:false, minSize:3, maxSize:20, unique:true
    }
}
