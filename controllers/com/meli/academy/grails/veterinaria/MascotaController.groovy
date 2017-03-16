package com.meli.academy.grails.veterinaria

class MascotaController {

	def clinicaService
	
		def add() {
			if (request.method == 'GET') {
				return [mascota: new Mascota(responsable: Responsable.get(params.responsable?.id)), tipos: Tipo.list()]
			}
	
			def mascota = clinicaService.crearMascota(params.mascota_nombre, params.mascota?.fechaNacimiento,
				(params.mascota?.tipo?.id ?: 0) as Long, (params.mascotaResponsableId ?: 0) as Long)
	
			if (mascota.hasErrors()) {
				return [mascota: mascota, tipos: Tipo.list()]
			}
	
			redirect controller: 'responsable', action: 'show', id: mascota.responsable.id
		}
	
		def edit() {
			if (request.method == 'GET') {
				render view: 'add', model: [mascota: Mascota.get(params.id), tipos: Tipo.list()]
				return
			}
	
			def mascota = Mascota.get(params.id)
	
			clinicaService.updateMascota(mascota, params.mascota_nombre, params.mascota?.fechaNacimiento,
				(params.mascota?.tipo?.id ?: 0) as Long, (params.mascotaResponsableId ?: 0) as Long)
	
			if (mascota.hasErrors()) {
				render view: 'add', model: [mascota: mascota, tipos: Tipo.list()]
			}
			else {
				redirect controller: 'responsable', action: 'show', id: mascota.responsable.id
			}
		}
	
		def addVisita() {
			if (request.method == 'GET') {
				return [visita: new Visita(mascota: Mascota.get(params.id))]
			}
	
			def visita = clinicaService.crearVisita((params.visita?.mascota?.id ?: 0) as Long, params.visita?.descripcion, params.visita?.fecha)
			if (visita.hasErrors()) {
				return [visita: visita]
			}
	
			redirect controller: 'responsable', action: 'show', id: visita.mascota.responsable.id
		}
}
