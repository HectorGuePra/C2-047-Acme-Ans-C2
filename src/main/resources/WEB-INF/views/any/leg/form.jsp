<%@page%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" uri="http://acme-framework.org/"%>

<acme:form>
	<acme:input-textbox code="any.leg.form.label.flightNumber" path="flightNumber"/>
	<acme:input-moment code="any.leg.form.label.scheduledDeparture" path="scheduledDeparture"/>
	<acme:input-moment code="any.leg.form.label.scheduledArrival" path="scheduledArrival"/>
	<acme:input-select code="any.leg.form.label.status" path="status" choices="${statuses}"/>
	<acme:input-select code="any.leg.form.label.departureAirport" path="departureAirport" choices="${departureAirports}"/>
	<acme:input-select code="any.leg.form.label.arrivalAirport" path="arrivalAirport" choices="${arrivalAirports}"/>
	<acme:input-select code="any.leg.form.label.aircraft" path="aircraft" choices="${aircraftChoices}"/>
</acme:form>