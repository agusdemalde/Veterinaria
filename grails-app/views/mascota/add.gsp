<html>
	<head>
		<meta name="layout" content="main">
		<title>${ mascota.id ? 'Actualizar' : 'Agregar'} Mascota</title>
	</head>

	<body id="add">
		<h2><g:if test="${!mascota.id}">Nueva </g:if>Mascota</h2>

		<b>Responsable:</b> ${mascota.responsable?.nombre} ${mascota.responsable?.apellido}
		<br/>

		<g:form action="${mascota.id ? 'edit' : 'add'}">
			<g:if test="${mascota.id}">
				<g:hiddenField name="id" value="${mascota.id}" />
			</g:if>
			<g:hiddenField name="mascotaResponsableId" value="${mascota.responsable.id}"></g:hiddenField>
			<table>
				<tr>
					<th>
					
					<g:render template="/common/formField"
					          model="[name:'mascota', bean:mascota, field:'nombre', label:'Nombre']" />
				</th>
				</tr>
				<tr>
					<th>
						Fecha Nacimiento: <span class="errors"><g:fieldError bean="${mascota}" field="fechaNacimiento" /></span>
						<br/>
						<g:datePicker name="mascota.fechaNacimiento" value="${mascota.fechaNacimiento}" precision="day"></g:datePicker>
					</th>
				</tr>
				<tr>
					<th>
						Tipo: <span class="errors"><g:fieldError bean="${mascota}" field="tipo" /></span>
						<br/>
						<g:select optionKey="id"
						          optionValue="nombre" name="mascota.tipo.id"
						          from="${tipos}"
						          value="${mascota.tipo?.id}"/>
					</th>
				</tr>
				<tr>
					<td>
						<p class="submit"><input type="submit" value="${mascota.id ? 'Actualizar' : 'Agregar' } Mascota"/></p>
					</td>
				</tr>
			</table>
		</g:form>

	</body>
</html>