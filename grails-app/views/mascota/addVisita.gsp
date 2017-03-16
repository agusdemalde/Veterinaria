<html>
	<head>
		<meta name="layout" content="main">
		<title>${ visita.id ? 'Actualizar' : 'Agregar'} Visita</title>
	</head>

	<body id="add">
		<h2><g:if test="${!visita.id}">Nueva </g:if>Visita</h2>

		<b>Mascota:</b> ${visita.mascota?.nombre}
		<br/>

		<g:form action="${visita.id ? 'edit' : 'addVisita'}">
			<g:if test="${visita.id}">
				<g:hiddenField name="id" value="${visita.id}" />
			</g:if>
			<g:hiddenField name="visitaMascotaId" value="${visita.mascota.id}"></g:hiddenField>
			<table>
				<tr>
					<th>
					<g:render template="/common/formField"
					          model="[name:'visita', bean:visita, field:'descripcion', label:'Descripcion']" />
				</th>
				</tr>
				<tr>
					<th>
						Fecha Visita: <span class="errors"><g:fieldError bean="${visita}" field="fecha" /></span>
						<br/>
						<g:datePicker name="visita.fecha" value="${visita.fecha}" precision="day"></g:datePicker>
					</th>
				</tr>
					<tr>
					<td>
						<p class="submit"><input type="submit" value="${visita.id ? 'Actualizar' : 'Agregar' } Visita"/></p>
					</td>
				</tr>
			</table>
		</g:form>

	</body>
</html>