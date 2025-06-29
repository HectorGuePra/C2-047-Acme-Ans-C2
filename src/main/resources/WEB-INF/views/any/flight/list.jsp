
<%@page%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" uri="http://acme-framework.org/"%>

<acme:list>
	<acme:list-column code="any.flight.list.label.tag" path="tag" width="30%"/>
	<acme:list-column code="any.flight.list.label.origin" path="origin" width="25%"/>
	<acme:list-column code="any.flight.list.label.destination" path="destination" width="25%"/>
</acme:list>

<acme:button code="any.flight.list.button.create" action="/any/flight/create"/>