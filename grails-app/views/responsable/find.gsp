<html>
	<head>
		<meta name="layout" content="main">
		<title>Buscar Responsables</title>
	</head>

	<body id="find">
		<h2>Buscar Responsables:</h2>

		<g:form action="find">
			<table>
				<tr>
					<th>
						Apellido:
						<br/>
						<g:textField name="apellido"/>
					<span class="errors"><g:message code="${message}"></g:message></span>
					</th>
				</tr>
				<tr>
					<td><p class="submit"><input type="submit" value="Buscar Responsable"/></p></td>
				</tr>
			</table>
		</g:form>

		<br/>
		<g:link controller="responsable" action="add">Agregar Responsable</g:link>
	</body>
</html>