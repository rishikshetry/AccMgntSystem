
<%@ page import="accmgntsystem.FeeStructure" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'feeStructure.label', default: 'FeeStructure')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-feeStructure" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-feeStructure" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list feeStructure">
			
				<g:if test="${feeStructureInstance?.admission}">
				<li class="fieldcontain">
					<span id="admission-label" class="property-label"><g:message code="feeStructure.admission.label" default="Admission" /></span>
					
						<span class="property-value" aria-labelledby="admission-label"><g:link controller="admission" action="show" id="${feeStructureInstance?.admission?.id}">${feeStructureInstance?.admission?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${feeStructureInstance?.admissionFee}">
				<li class="fieldcontain">
					<span id="admissionFee-label" class="property-label"><g:message code="feeStructure.admissionFee.label" default="Admission Fee" /></span>
					
						<span class="property-value" aria-labelledby="admissionFee-label"><g:fieldValue bean="${feeStructureInstance}" field="admissionFee"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${feeStructureInstance?.grade}">
				<li class="fieldcontain">
					<span id="grade-label" class="property-label"><g:message code="feeStructure.grade.label" default="Grade" /></span>
					
						<span class="property-value" aria-labelledby="grade-label"><g:fieldValue bean="${feeStructureInstance}" field="grade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${feeStructureInstance?.studentAccount}">
				<li class="fieldcontain">
					<span id="studentAccount-label" class="property-label"><g:message code="feeStructure.studentAccount.label" default="Student Account" /></span>
					
						<span class="property-value" aria-labelledby="studentAccount-label"><g:link controller="studentAccount" action="show" id="${feeStructureInstance?.studentAccount?.id}">${feeStructureInstance?.studentAccount?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${feeStructureInstance?.tutionFee}">
				<li class="fieldcontain">
					<span id="tutionFee-label" class="property-label"><g:message code="feeStructure.tutionFee.label" default="Tution Fee" /></span>
					
						<span class="property-value" aria-labelledby="tutionFee-label"><g:fieldValue bean="${feeStructureInstance}" field="tutionFee"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:feeStructureInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${feeStructureInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
