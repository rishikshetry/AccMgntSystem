
<%@ page import="accmgntsystem.StudentAccount" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'studentAccount.label', default: 'StudentAccount')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-studentAccount" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-studentAccount" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list studentAccount">
			
				<g:if test="${studentAccountInstance?.fromDate}">
				<li class="fieldcontain">
					<span id="fromDate-label" class="property-label"><g:message code="studentAccount.fromDate.label" default="From Date" /></span>
					
						<span class="property-value" aria-labelledby="fromDate-label"><g:formatDate date="${studentAccountInstance?.fromDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentAccountInstance?.grade}">
				<li class="fieldcontain">
					<span id="grade-label" class="property-label"><g:message code="studentAccount.grade.label" default="Grade" /></span>
					
						<span class="property-value" aria-labelledby="grade-label"><g:fieldValue bean="${studentAccountInstance}" field="grade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentAccountInstance?.month}">
				<li class="fieldcontain">
					<span id="month-label" class="property-label"><g:message code="studentAccount.month.label" default="Month" /></span>
					
						<span class="property-value" aria-labelledby="month-label"><g:fieldValue bean="${studentAccountInstance}" field="month"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentAccountInstance?.paid}">
				<li class="fieldcontain">
					<span id="paid-label" class="property-label"><g:message code="studentAccount.paid.label" default="Paid" /></span>
					
						<span class="property-value" aria-labelledby="paid-label"><g:formatBoolean boolean="${studentAccountInstance?.paid}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentAccountInstance?.paidDate}">
				<li class="fieldcontain">
					<span id="paidDate-label" class="property-label"><g:message code="studentAccount.paidDate.label" default="Paid Date" /></span>
					
						<span class="property-value" aria-labelledby="paidDate-label"><g:formatDate date="${studentAccountInstance?.paidDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentAccountInstance?.receivedBy}">
				<li class="fieldcontain">
					<span id="receivedBy-label" class="property-label"><g:message code="studentAccount.receivedBy.label" default="Received By" /></span>
					
						<span class="property-value" aria-labelledby="receivedBy-label"><g:fieldValue bean="${studentAccountInstance}" field="receivedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentAccountInstance?.roll}">
				<li class="fieldcontain">
					<span id="roll-label" class="property-label"><g:message code="studentAccount.roll.label" default="Roll" /></span>
					
						<span class="property-value" aria-labelledby="roll-label"><g:fieldValue bean="${studentAccountInstance}" field="roll"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentAccountInstance?.sname}">
				<li class="fieldcontain">
					<span id="sname-label" class="property-label"><g:message code="studentAccount.sname.label" default="Sname" /></span>
					
						<span class="property-value" aria-labelledby="sname-label"><g:fieldValue bean="${studentAccountInstance}" field="sname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentAccountInstance?.toDate}">
				<li class="fieldcontain">
					<span id="toDate-label" class="property-label"><g:message code="studentAccount.toDate.label" default="To Date" /></span>
					
						<span class="property-value" aria-labelledby="toDate-label"><g:formatDate date="${studentAccountInstance?.toDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentAccountInstance?.totalFee}">
				<li class="fieldcontain">
					<span id="totalFee-label" class="property-label"><g:message code="studentAccount.totalFee.label" default="Total Fee" /></span>
					
						<span class="property-value" aria-labelledby="totalFee-label"><g:fieldValue bean="${studentAccountInstance}" field="totalFee"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentAccountInstance?.tutionFee}">
				<li class="fieldcontain">
					<span id="tutionFee-label" class="property-label"><g:message code="studentAccount.tutionFee.label" default="Tution Fee" /></span>
					
						<span class="property-value" aria-labelledby="tutionFee-label"><g:fieldValue bean="${studentAccountInstance}" field="tutionFee"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:studentAccountInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${studentAccountInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
