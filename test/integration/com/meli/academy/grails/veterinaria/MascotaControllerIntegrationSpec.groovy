package com.meli.academy.grails.veterinaria

import grails.test.spock.IntegrationSpec

class MascotaControllerIntegrationSpec extends GroovyTestCase {

    def setup() {
    }

    def cleanup() {
    }
	void "testRedirect"() {
		def mascotaController = new MascotaController()
		mascotaController.params["nombre"]='Max'
		mascotaController.find()
		println "URL" + mascotaController.modelAndView?.getView()
		
		
	 mascotaController.modelAndView?.getViewName() =='selection'
	}
	
  
}
