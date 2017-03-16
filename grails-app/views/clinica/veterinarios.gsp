<html>
	<head>
		<meta name="layout" content="main">
		<title>Veterinarios</title>
	</head>
	<body id="veterinarios">
		<h2>Veterinarios:</h2>

		<table>
			<thead>
				<tr>
					<th>Nombre</th>
					<th>Especialidades</th>
				</tr>
			</thead>
			<g:each var="veterinario" in="${veterinarios}">
				<tr>
					<td>${veterinario.nombre} ${veterinario.apellido}</td>
					<td>
						<g:each var="especialidad" in="${veterinario.especialidades}">
						${especialidad.nombre}
						</g:each>
						<g:if test="${!veterinario.especialidades}">none</g:if>
					</td>
				</tr>
			</g:each>
		</table>
	</body>
</html>