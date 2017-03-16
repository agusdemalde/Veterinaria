package com.meli.academy.grails.veterinaria

class ResponsableController {

    def clinicaService

	def add() {
		if (request.method == 'GET') {
			return [responsableBean: new Responsable()]
		}

		def responsable = clinicaService.crearResponsable(params.responsable_nombre, params.responsable_apellido,
			params.responsable_domicilio, params.responsable_ciudad, params.responsable_telefono)

		if (responsable.hasErrors()) {
			return [responsableBean: responsable]
		}

		redirect action: 'show', id: responsable.id
	}

	def show() {
		def responsable = Responsable.get(params.id)
		if (!responsable) {
			response.sendError 404
			return
		}

		[responsableBean: responsable]
	}

	def edit() {
		def responsable = Responsable.get(params.id)
		if (request.method == 'GET') {
			render view: 'add', model: [responsableBean: responsable]
			return
		}

		clinicaService.updateResponsable(Responsable.get(params.id), params.responsable?.nombre, params.responsable?.apellido,
			params.responsable?.domicilio, params.responsable?.ciudad, params.responsable?.telefono)

		if (responsable.hasErrors()) {
			render view: 'add', model: [responsableBean: responsable]
			return
		}
		redirect action: 'show', id: responsable.id
	}

	def find() {
		if (!request.post) {
			return
		}

		def responsables = Responsable.findAllByApellido(params.apellido)
		if (!responsables) {
			return [message: 'responsable.not.found']
		}

		if (responsables.size() > 1) {
			render view: 'selection', model: [responsables: responsables]
		} else {
			redirect action: 'show', id: responsables[0].id
		}
	}
}
