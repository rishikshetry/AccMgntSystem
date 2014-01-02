<%@ page import="accmgntsystem.Admission" %>



<div class="fieldcontain ${hasErrors(bean: admissionInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="admission.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${admissionInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: admissionInstance, field: 'admFee', 'error')} required">
	<label for="admFee">
		<g:message code="admission.admFee.label" default="Adm Fee" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="admFee" type="number" value="${admissionInstance.admFee}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: admissionInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="admission.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${admissionInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: admissionInstance, field: 'dob', 'error')} required">
	<label for="dob">
		<g:message code="admission.dob.label" default="Dob" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dob" precision="day"  value="${admissionInstance?.dob}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: admissionInstance, field: 'grade', 'error')} required">
	<label for="grade">
		<g:message code="admission.grade.label" default="Grade" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="grade" type="number" value="${admissionInstance.grade}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: admissionInstance, field: 'pName', 'error')} ">
	<label for="pName">
		<g:message code="admission.pName.label" default="PN ame" />
		
	</label>
	<g:textField name="pName" value="${admissionInstance?.pName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: admissionInstance, field: 'phone', 'error')} required">
	<label for="phone">
		<g:message code="admission.phone.label" default="Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="phone" type="number" value="${admissionInstance.phone}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: admissionInstance, field: 'sName', 'error')} ">
	<label for="sName">
		<g:message code="admission.sName.label" default="SN ame" />
		
	</label>
	<g:textField name="sName" value="${admissionInstance?.sName}"/>
</div>

