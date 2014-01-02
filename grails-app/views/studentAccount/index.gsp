
<%@ page import="accmgntsystem.StudentAccount" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'studentAccount.label', default: 'StudentAccount')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-studentAccount" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-studentAccount" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="fromDate" title="${message(code: 'studentAccount.fromDate.label', default: 'From Date')}" />
					
						<g:sortableColumn property="grade" title="${message(code: 'studentAccount.grade.label', default: 'Grade')}" />
					
						<g:sortableColumn property="month" title="${message(code: 'studentAccount.month.label', default: 'Month')}" />
					
						<g:sortableColumn property="paid" title="${message(code: 'studentAccount.paid.label', default: 'Paid')}" />
					
						<g:sortableColumn property="paidDate" title="${message(code: 'studentAccount.paidDate.label', default: 'Paid Date')}" />
					
						<g:sortableColumn property="receivedBy" title="${message(code: 'studentAccount.receivedBy.label', default: 'Received By')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${studentAccountInstanceList}" status="i" var="studentAccountInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${studentAccountInstance.id}">${fieldValue(bean: studentAccountInstance, field: "fromDate")}</g:link></td>
					
						<td>${fieldValue(bean: studentAccountInstance, field: "grade")}</td>
					
						<td>${fieldValue(bean: studentAccountInstance, field: "month")}</td>
					
						<td><g:formatBoolean boolean="${studentAccountInstance.paid}" /></td>
					
						<td><g:formatDate date="${studentAccountInstance.paidDate}" /></td>
					
						<td>${fieldValue(bean: studentAccountInstance, field: "receivedBy")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${studentAccountInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
