
<%@ page import="accmgntsystem.FeeStructure" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'feeStructure.label', default: 'FeeStructure')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-feeStructure" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-feeStructure" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="feeStructure.admission.label" default="Admission" /></th>
					
						<g:sortableColumn property="admissionFee" title="${message(code: 'feeStructure.admissionFee.label', default: 'Admission Fee')}" />
					
						<g:sortableColumn property="grade" title="${message(code: 'feeStructure.grade.label', default: 'Grade')}" />
					
						<th><g:message code="feeStructure.studentAccount.label" default="Student Account" /></th>
					
						<g:sortableColumn property="tutionFee" title="${message(code: 'feeStructure.tutionFee.label', default: 'Tution Fee')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${feeStructureInstanceList}" status="i" var="feeStructureInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${feeStructureInstance.id}">${fieldValue(bean: feeStructureInstance, field: "admission")}</g:link></td>
					
						<td>${fieldValue(bean: feeStructureInstance, field: "admissionFee")}</td>
					
						<td>${fieldValue(bean: feeStructureInstance, field: "grade")}</td>
					
						<td>${fieldValue(bean: feeStructureInstance, field: "studentAccount")}</td>
					
						<td>${fieldValue(bean: feeStructureInstance, field: "tutionFee")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${feeStructureInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
