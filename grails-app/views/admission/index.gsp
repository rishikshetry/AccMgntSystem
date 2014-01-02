
<%@ page import="accmgntsystem.Admission" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'admission.label', default: 'Admission')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-admission" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-admission" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="address" title="${message(code: 'admission.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="admFee" title="${message(code: 'admission.admFee.label', default: 'Adm Fee')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'admission.city.label', default: 'City')}" />
					
						<g:sortableColumn property="dob" title="${message(code: 'admission.dob.label', default: 'Dob')}" />
					
						<g:sortableColumn property="grade" title="${message(code: 'admission.grade.label', default: 'Grade')}" />
					
						<g:sortableColumn property="pName" title="${message(code: 'admission.pName.label', default: 'PN ame')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${admissionInstanceList}" status="i" var="admissionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${admissionInstance.id}">${fieldValue(bean: admissionInstance, field: "address")}</g:link></td>
					
						<td>${fieldValue(bean: admissionInstance, field: "admFee")}</td>
					
						<td>${fieldValue(bean: admissionInstance, field: "city")}</td>
					
						<td><g:formatDate date="${admissionInstance.dob}" /></td>
					
						<td>${fieldValue(bean: admissionInstance, field: "grade")}</td>
					
						<td>${fieldValue(bean: admissionInstance, field: "pName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${admissionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
