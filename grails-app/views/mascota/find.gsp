<html>
	<head>
		<meta name="layout" content="main">
		<title>Buscar Mascotas</title>
	</head>

	<body id="find">
		<h2>Buscar Mascotas:</h2>

		<g:form action="find">
			<table>
				<tr>
					<th>
						Nombre Mascota:
						<br/>
						<g:textField name="nombre"/>
					<span class="errors"><g:message code="${message}"></g:message></span>
					</th>
				</tr>
				<tr>
					<td><p class="submit"><input type="submit" value="Buscar Mascotas"/></p></td>
				</tr>
			</table>
		</g:form>

		<br/>
		<g:link controller="mascotas" action="add">Agregar Mascotas</g:link>
	</body>
</html>