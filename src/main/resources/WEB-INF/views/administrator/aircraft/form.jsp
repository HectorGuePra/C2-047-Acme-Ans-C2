<%@page%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" uri="http://acme-framework.org/"%>

<acme:form> 
	<acme:input-textbox code="administrator.aircraft.form.label.model" path="model"/>
	<acme:input-textbox code="administrator.aircraft.form.label.regNumber" path="regNumber"/>	
	<acme:input-integer code="administrator.aircraft.form.label.capacity" path="capacity"/>	
	<acme:input-integer code="administrator.aircraft.form.label.cargoWeight" path="cargoWeight"/>
	<acme:input-select code="administrator.aircraft.form.label.status" path="status" choices="${statuses}"/>
	<acme:input-textarea code="administrator.aircraft.form.label.notes" path="notes"/>
	<acme:input-select code="administrator.aircraft.form.label.airline" path="airline" choices="${airlines}"/>

	<acme:input-checkbox code="administrator.aircraft.form.label.confirmation" path="confirmation"/>
	<jstl:choose>	 
		<jstl:when test="${acme:anyOf(_command, 'show|update|disable')}">
			<jstl:choose>
				<jstl:when test="${draftMode == true}">
					<acme:submit code="administrator.aircraft.form.button.update" action="/administrator/aircraft/update"/>
					<acme:submit code="administrator.aircraft.form.button.publish" action="/administrator/aircraft/publish"/>
				</jstl:when>
				<jstl:when test="${(status == 'IN_SERVICE') && !(acme:anyOf(_command, 'update') && !confirmation)}">
					<acme:submit code="administrator.aircraft.form.button.disable" action="/administrator/aircraft/disable"/>
				</jstl:when>
			</jstl:choose>
		</jstl:when>
		<jstl:when test="${_command == 'create'}">
			<acme:submit code="administrator.aircraft.form.button.create" action="/administrator/aircraft/create"/>
		</jstl:when>		
	</jstl:choose>
</acme:form>