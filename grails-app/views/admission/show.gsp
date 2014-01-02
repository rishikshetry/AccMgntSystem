
<%@ page import="accmgntsystem.Admission" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'admission.label', default: 'Admission')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-admission" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-admission" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list admission">
			
				<g:if test="${admissionInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="admission.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${admissionInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${admissionInstance?.admFee}">
				<li class="fieldcontain">
					<span id="admFee-label" class="property-label"><g:message code="admission.admFee.label" default="Adm Fee" /></span>
					
						<span class="property-value" aria-labelledby="admFee-label"><g:fieldValue bean="${admissionInstance}" field="admFee"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${admissionInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="admission.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${admissionInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${admissionInstance?.dob}">
				<li class="fieldcontain">
					<span id="dob-label" class="property-label"><g:message code="admission.dob.label" default="Dob" /></span>
					
						<span class="property-value" aria-labelledby="dob-label"><g:formatDate date="${admissionInstance?.dob}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${admissionInstance?.grade}">
				<li class="fieldcontain">
					<span id="grade-label" class="property-label"><g:message code="admission.grade.label" default="Grade" /></span>
					
						<span class="property-value" aria-labelledby="grade-label"><g:fieldValue bean="${admissionInstance}" field="grade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${admissionInstance?.pName}">
				<li class="fieldcontain">
					<span id="pName-label" class="property-label"><g:message code="admission.pName.label" default="PN ame" /></span>
					
						<span class="property-value" aria-labelledby="pName-label"><g:fieldValue bean="${admissionInstance}" field="pName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${admissionInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="admission.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${admissionInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${admissionInstance?.sName}">
				<li class="fieldcontain">
					<span id="sName-label" class="property-label"><g:message code="admission.sName.label" default="SN ame" /></span>
					
						<span class="property-value" aria-labelledby="sName-label"><g:fieldValue bean="${admissionInstance}" field="sName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:admissionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${admissionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
