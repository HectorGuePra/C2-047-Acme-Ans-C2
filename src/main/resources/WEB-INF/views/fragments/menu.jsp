<%--
- menu.jsp
-
- Copyright (C) 2012-2025 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="acme" uri="http://acme-framework.org/"%>

<acme:menu-bar>
<acme:menu-left>
    <acme:menu-option code="master.menu.anonymous" access="isAnonymous()">
        <acme:menu-suboption code="77934097T: Borja Leon, Joaquin" action="https://github.com/JoaquinBorjaLeon"/>
        <acme:menu-suboption code="53988016R: Escobar Capilla, Ariel" action="https://github.com/ArielEC"/>
        <acme:menu-suboption code="29494386Z: Rodríguez Durán, José Ángel" action="https://github.com/DLJ7666"/>
        <acme:menu-suboption code="54182158T: Guerra Prada, Héctor" action="https://github.com/HectorGuePra"/>
        <acme:menu-suboption code="20503423G: León Madroñal, Juan Carlos" action="https://github.com/jualeomad"/>
    </acme:menu-option>

    <acme:menu-option code="master.menu.administrator" access="hasRealm('Administrator')">
        <acme:menu-suboption code="master.menu.administrator.list-user-accounts" action="/administrator/user-account/list"/>
        <acme:menu-separator/>
        <acme:menu-suboption code="master.menu.administrator.airline" action="/administrator/airline/list"/>
        <acme:menu-suboption code="master.menu.administrator.aircraft" action="/administrator/aircraft/list"/>
        <acme:menu-suboption code="master.menu.administrator.list-airport" action="/administrator/airport/list"/>
        <acme:menu-suboption code="master.menu.administrator.populate-db-initial" action="/administrator/system/populate-initial"/>
        <acme:menu-suboption code="master.menu.administrator.populate-db-sample" action="/administrator/system/populate-sample"/>			
        <acme:menu-separator/>
        <acme:menu-suboption code="master.menu.administrator.shut-system-down" action="/administrator/system/shut-down"/>
    </acme:menu-option>
    
    <acme:menu-option code="master.menu.any">
      		<acme:menu-suboption code="master.menu.any.flights" action="/any/flight/list"/>
      		<acme:menu-suboption code="master.menu.any.flight-assignments" action="/any/flight-assignment/list"/>
		</acme:menu-option>

    <acme:menu-option code="master.menu.manager" access="hasRealm('Manager')">
						<acme:menu-suboption code="master.menu.manager.flights" action="/manager/flight/list"/>
						<acme:menu-suboption code="master.menu.manager.show-dashboard" action="/manager/dashboard/show"/>
		</acme:menu-option>

		<acme:menu-option code="master.menu.flightCrewMember" access="hasRealm('FlightCrewMember')">
 			<acme:menu-suboption code="master.menu.flightCrewMember.listLanded" action="/flight-crew-member/flight-assignment/list"/>
 			<acme:menu-suboption code="master.menu.flightCrewMember.listPlanned" action="/flight-crew-member/flight-assignment/list-planned"/>
			<acme:menu-suboption code="master.menu.flightCrewMember.show-dashboard" action="/flight-crew-member/dashboard/show"/> 		
		</acme:menu-option>
 		
		<acme:menu-option code="master.menu.consumer" access="hasRealm('Consumer')">
			<acme:menu-suboption code="master.menu.consumer.favourite-link" action="http://www.example.com/"/>
		</acme:menu-option>
		
		<acme:menu-option code="master.menu.technician" access="hasRealm('Technician')">
			<acme:menu-suboption code="master.menu.technician.tasks-list" action="/technician/task/list"/>
			<acme:menu-suboption code="master.menu.technician.maintenance-record-list" action="/technician/maintenance-record/list"/>
		</acme:menu-option>

		<acme:menu-option code="master.menu.customer" access="hasRealm('Customer')">
			<acme:menu-suboption code="master.menu.customer.booking" action="/customer/booking/list"/>
			<acme:menu-suboption code="master.menu.customer.passenger" action="/customer/passenger/list"/>
		</acme:menu-option>
        <acme:menu-option code="master.menu.provider" access="hasRealm('Provider')">
            <acme:menu-suboption code="master.menu.provider.favourite-link" action="http://www.example.com/"/>
        </acme:menu-option>
	</acme:menu-left>

    <acme:menu-right>
    <acme:menu-option code="master.menu.user-account" access="isAuthenticated()">
        <acme:menu-suboption code="master.menu.user-account.general-profile" action="/authenticated/user-account/update"/>
        <acme:menu-suboption code="master.menu.user-account.manager-profile" action="/authenticated/manager/update" access="hasRealm('Manager')"/>
        	<acme:menu-suboption code="master.menu.user-account.become-manager" action="/authenticated/manager/create" access="!hasRealm('Manager')"/>
        <acme:menu-suboption code="master.menu.user-account.become-member" action="/authenticated/flight-crew-member/create" access="!hasRealm('FlightCrewMember') && !hasRealm('Manager') && !hasRealm('Consumer') && !hasRealm('Provider') && !hasRealm('Customer') && !hasRealm('Technician')"/>
        <acme:menu-suboption code="master.menu.user-account.flight-crew-member" action="/authenticated/flight-crew-member/update" access="hasRealm('FlightCrewMember')"/>
    </acme:menu-option>
</acme:menu-right>
</acme:menu-bar> 