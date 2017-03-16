package com.meli.academy.grails.veterinaria

import grails.transaction.Transactional

@Transactional
class ClinicaService {

    Mascota crearMascota(String nombre, Date fechaNacimiento, long tipoId, long responsableId) {
		def mascota = new Mascota(nombre:nombre, fechaNacimiento:fechaNacimiento, tipo:Tipo.load(tipoId), responsable:Responsable.load(responsableId))
		mascota.save()
		return mascota
	}

	void updateMascota(Mascota mascota, String nombre, Date fechaNacimiento, long tipoId, long responsableId) {
		mascota.nombre = nombre
		mascota.fechaNacimiento = fechaNacimiento
		mascota.tipo = Tipo.load(tipoId)
		mascota.responsable = Responsable.load(responsableId)
		mascota.save()
	}

	Visita crearVisita(long mascotaId, String descripcion, Date fecha) {
		def visita = new Visita(mascota:Mascota.load(mascotaId), descripcion:descripcion, fecha:fecha)
		visita.save()
		return visita
	}

	Responsable crearResponsable(String nombre, String apellido, String domicilio, String ciudad, String telefono) {
		def responsable = new Responsable(nombre:nombre, apellido:apellido, domicilio:domicilio, ciudad:ciudad, telefono:telefono)
		responsable.save()
		return responsable
	}

	void updateResponsable(Responsable responsable, String nombre, String apellido, String domicilio, String ciudad, String telefono) {
		responsable.nombre = nombre
		responsable.apellido = apellido
		responsable.domicilio = domicilio
		responsable.ciudad = ciudad
		responsable.telefono = telefono
		responsable.save()
	}
}
