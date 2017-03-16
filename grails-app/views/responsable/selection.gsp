<html>
	<head>
		<meta name="layout" content="main">
		<title>Seleccione Responsable</title>
	</head>

	<body id="selection">
		<h2>Responsables:</h2>

		<table>
			<thead>
			<tr>
				<th>Nombre</th>
				<th>Domicilio</th>
				<th>Ciudad</th>
				<th>Telefono</th>
				<th>Mascotas</th>
			</tr>
			</thead>
			<g:each var="o" in="${responsables}">
				<tr>
					<td>
                        <g:link action="show" id="${o.id}">${o.nombre} ${o.apellido}</g:link>
					</td>
					<td>${o.domicilio}</td>
					<td>${o.ciudad}</td>
					<td>${o.telefono}</td>
					<td>
						<g:each var="mascota" in="${o.mascotas}">
							${mascota.nombre} &nbsp;
						</g:each>
					</td>
				</tr>
			</g:each>
		</table>
	</body>
</html>