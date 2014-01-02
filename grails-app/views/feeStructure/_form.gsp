<%@ page import="accmgntsystem.FeeStructure" %>



<div class="fieldcontain ${hasErrors(bean: feeStructureInstance, field: 'admission', 'error')} required">
	<label for="admission">
		<g:message code="feeStructure.admission.label" default="Admission" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="admission" name="admission.id" from="${accmgntsystem.Admission.list()}" optionKey="id" required="" value="${feeStructureInstance?.admission?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: feeStructureInstance, field: 'admissionFee', 'error')} required">
	<label for="admissionFee">
		<g:message code="feeStructure.admissionFee.label" default="Admission Fee" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="admissionFee" type="number" value="${feeStructureInstance.admissionFee}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: feeStructureInstance, field: 'grade', 'error')} required">
	<label for="grade">
		<g:message code="feeStructure.grade.label" default="Grade" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="grade" type="number" value="${feeStructureInstance.grade}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: feeStructureInstance, field: 'studentAccount', 'error')} required">
	<label for="studentAccount">
		<g:message code="feeStructure.studentAccount.label" default="Student Account" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="studentAccount" name="studentAccount.id" from="${accmgntsystem.StudentAccount.list()}" optionKey="id" required="" value="${feeStructureInstance?.studentAccount?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: feeStructureInstance, field: 'tutionFee', 'error')} required">
	<label for="tutionFee">
		<g:message code="feeStructure.tutionFee.label" default="Tution Fee" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tutionFee" type="number" value="${feeStructureInstance.tutionFee}" required=""/>
</div>

