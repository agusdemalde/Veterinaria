import org.junit.After;

import com.meli.academy.grails.veterinaria.ClinicaService;
import com.meli.academy.grails.veterinaria.Especialidad;
import com.meli.academy.grails.veterinaria.Responsable;
import com.meli.academy.grails.veterinaria.Tipo;
import com.meli.academy.grails.veterinaria.Veterinario;

class BootStrap {

    def init = { servletContext ->
		if (!Especialidad.count()) {
			def radiologia = new Especialidad(nombre: 'radiologia').save(flush:true)
			def cirugia =   new Especialidad(nombre: 'cirugia').save(flush:true)
			def odontologia = new Especialidad(nombre: 'odontologia').save(flush:true)

			def v1 = new Veterinario(nombre: 'Juan', apellido: 'Perez').save(flush:true)
			v1.addToEspecialidades(radiologia)
			v1.save(flush:true)
			def v2 = new Veterinario(nombre: 'Gregory', apellido: 'House').save(flush:true)
			v2.addToEspecialidades(cirugia)
			v2.addToEspecialidades(odontologia)
			v2.save(flush:true)
			def v3 = new Veterinario(nombre: 'Maria', apellido: 'Bonita').save(flush:true)
			v3.addToEspecialidades(radiologia)
			v3.addToEspecialidades(odontologia)
			v3.save(flush:true)
			def v4 = new Veterinario(nombre: 'Rafael', apellido: 'Ortega').save(flush:true)
			v4.addToEspecialidades(odontologia)
			v4.save(flush:true)
			def v5 = new Veterinario(nombre: 'Pedro', apellido: 'Garcia').save(flush:true)
			v5.addToEspecialidades(cirugia)
			v5.save(flush:true)
			def v6 = new Veterinario(nombre: 'Aldana', apellido: 'Rojas').save(flush:true)
			v6.addToEspecialidades(odontologia)
			v6.save(flush:true)

			for (String tipo in ['perro', 'lagartija', 'gato', 'serpiente', 'pajaro', 'hamster']) {
				new Tipo(nombre: tipo).save()
			}
		}
		
		if(!Responsable.count) {
			new Responsable(apellido: 'Zurita', nombre: 'Jose', domicilio: 'Av. Madrid 1778', ciudad: 'Cordoba', telefono: '3513554588')
				.save()
			new Responsable(apellido: 'Zurita', nombre: 'Viviana', domicilio: 'Los Tilos 1888', ciudad: 'Cordoba', telefono: '3513554589')
				.save()
			new Responsable(apellido: 'Burgos', nombre: 'Juana', domicilio: 'Sanavirones 123', ciudad: 'Cordoba', telefono: '3513554580')
				.save()
		}
		
    }
}
