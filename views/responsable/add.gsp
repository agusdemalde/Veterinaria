<html>
	<head>
		<meta name="layout" content="main">
		<title>Agregar Responsable</title>
	</head>

	<body id="add">
		<h2><g:if test="${!responsableBean.id}">Nuevo </g:if>Responsable:</h2>

		<g:form action="${ responsableBean.id ? 'edit' : 'add'}" id="${responsableBean?.id}">
			<table>
				<tr>
					<th>
						<g:render template="/common/formField"
						          model="[name:'responsable', bean:responsableBean, field:'nombre', label:'Nombre']" />
					</th>
				</tr>
				<tr>
					<th>
						<g:render template="/common/formField"
						          model="[name:'responsable', bean:responsableBean, field:'apellido', label:'Apellido']" />
					</th>
				</tr>
				<tr>
					<th>
						<g:render template="/common/formField"
						          model="[name:'responsable', bean:responsableBean, field:'domicilio', label:'Domicilio']" />
					</th>
				</tr>
				<tr>
					<th>
						<g:render template="/common/formField"
						          model="[name:'responsable', bean:responsableBean, field:'ciudad', label:'Ciudad']" />

					</th>
				</tr>
				<tr>
					<th>
						<g:render template="/common/formField"
						          model="[name:'responsable', bean:responsableBean, field:'telefono', label:'Telefono']" />
					</th>
				</tr>
				<tr>
					<td>
						<p class="submit"><input type="submit" value="${ responsableBean.id ? 'Actualizar' : 'Agregar'} Responsable"/></p>
					</td>
				</tr>
			</table>
		</g:form>
	</body>
</html>