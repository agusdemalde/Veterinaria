<html>
	<head>
		<meta name="layout" content="main">
		<title>Seleccione Mascota</title>
	</head>

	<body id="selection">
		<h2>Mascota:</h2>

		<table>
			<thead>
			<tr>
				<th>Nombre</th>
				<th>Fecha Nacimiento</th>
				<th>Tipo</th>
				<th>Responsable</th>
				
			</tr>
			</thead>
			<g:each var="o" in="${mascotas}">
				<tr>
					<td>
                       ${o.nombre}
					</td>
					<td>${o.fechaNacimiento}</td>
					<td>${o.tipo.nombre}</td>
					<td>${o.responsable.nombre} ${o.responsable.apellido}</td>
					
				</tr>
			</g:each>
		</table>
	</body>
</html>