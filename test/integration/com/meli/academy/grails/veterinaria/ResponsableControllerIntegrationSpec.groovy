package com.meli.academy.grails.veterinaria

import grails.test.spock.IntegrationSpec

class ResponsableControllerIntegrationSpec extends GroovyTestCase {

    def setup() {
    }

    def cleanup() {
    }

    void "test agregar nuevo responsable"() {
		def responsableController = new ResponsableController()
		responsableController.params["responsable_nombre"] = "Pedro"
		responsableController.params["responsable_apellido"] = "Avellaneda"
		responsableController.params["responsable_domicilio"] = "Pedro"
		responsableController.params["responsable_ciudad"] = "Cordoba"
		responsableController.params["responsable_telefono"] = "4809745"
		
		responsableController.request.method = 'POST'
		responsableController.add()
		
		assertEquals("/responsable/show/18", responsableController.response.redirectedUrl)
    }
	
	void "test show responsable"() {
		def responsableController = new ResponsableController()
		responsableController.params["id"] = 10
		responsableController.modelAndView?.getModel() != null  
	}
	
}
