<html>
	<head>
		<meta name="layout" content="main">
		<title>Información del Responsable</title>
	</head>

	<body id="show">
		<h2>Información del Responsable</h2>

		<table>
			<tr>
				<th>Nombre</th>
				<td><b>${responsableBean.nombre} ${responsableBean.apellido}</b></td>
			</tr>
			<tr>
				<th>Domicilio</th>
				<td>${responsableBean.domicilio}</td>
			</tr>
			<tr>
				<th>Ciudad</th>
				<td>${responsableBean.ciudad}</td>
			</tr>
			<tr>
				<th>Telefono</th>
				<td>${responsableBean.telefono}</td>
			</tr>
		</table>
		<table class="table-buttons">
			<tr>
				<td colspan="2" align="center">
					<g:form method="GET" url="[action:'edit', id:responsableBean.id]">
						<p class="submit"><input type="submit" value="Editar Responsable"/></p>
					</g:form>
				</td>
				<td>
					<g:form method="GET" url="[controller:'mascota', action:'add']" name="formAddMascota">
						<input type="hidden" name="responsable.id" value="${responsableBean.id}"/>
						<p class="submit"><input type="submit" value="Agregar nueva mascota"/></p>
					</g:form>
				</td>
			</tr>
		</table>

		<h2>Mascotas y Visitas</h2>

		<g:each var="mascota" in="${responsableBean.mascotas}">
			<table width="94%">
				<tr>
					<td valign="top">
						<table>
							<tr>
								<th>Nombre</th>
								<td><b>${mascota.nombre}</b></td>
							</tr>
							<tr>
								<th>Fecha Nacimiento</th>
								<td><g:formatDate date="${mascota.fechaNacimiento}" format="dd-MM-yyyy"/></td>
							</tr>
							<tr>
								<th>Tipo</th>
								<td>${mascota.tipo.nombre}</td>
							</tr>
						</table>
					</td>
					<td valign="top">
						<table>
							<thead>
							<tr>
								<th>Fecha Visita</th>
								<th>Descripción</th>
							</tr>
							</thead>
							<g:each var="visita" in="${mascota.visitas}">
								<tr>
									<td><g:formatDate date="${visita.fecha}" format="dd-MM-yyyy"/></td>
									<td>${visita.descripcion}</td>
								</tr>
							</g:each>
						</table>
					</td>
				</tr>
			</table>
			<table class="table-buttons">
				<tr>
					<td>
						<g:form method="GET" url="[controller:'mascota', action:'edit', id:mascota.id]"
	 					        name="formEditMascota${mascota.id}">
							<p class="submit"><input type="submit" value="Editar mascota"/></p>
						</g:form>
					</td>
					<td>
						<g:form method="GET" url="[controller:'mascota', action:'addVisita', id:mascota.id]"
						        name="formVisitaMascota${mascota.id}">
							<p class="submit"><input type="submit" value="Agregar visita"/></p>
						</g:form>
					</td>
				</tr>
			</table>
		</g:each>

	</body>
</html>