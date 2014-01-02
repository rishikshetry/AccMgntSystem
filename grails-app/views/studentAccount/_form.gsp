<%@ page import="accmgntsystem.StudentAccount" %>



<div class="fieldcontain ${hasErrors(bean: studentAccountInstance, field: 'fromDate', 'error')} required">
	<label for="fromDate">
		<g:message code="studentAccount.fromDate.label" default="From Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fromDate" precision="day"  value="${studentAccountInstance?.fromDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: studentAccountInstance, field: 'grade', 'error')} required">
	<label for="grade">
		<g:message code="studentAccount.grade.label" default="Grade" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="grade" type="number" value="${studentAccountInstance.grade}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentAccountInstance, field: 'month', 'error')} required">
	<label for="month">
		<g:message code="studentAccount.month.label" default="Month" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="month" type="number" value="${studentAccountInstance.month}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentAccountInstance, field: 'paid', 'error')} ">
	<label for="paid">
		<g:message code="studentAccount.paid.label" default="Paid" />
		
	</label>
	<g:checkBox name="paid" value="${studentAccountInstance?.paid}" />
</div>

<div class="fieldcontain ${hasErrors(bean: studentAccountInstance, field: 'paidDate', 'error')} required">
	<label for="paidDate">
		<g:message code="studentAccount.paidDate.label" default="Paid Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="paidDate" precision="day"  value="${studentAccountInstance?.paidDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: studentAccountInstance, field: 'receivedBy', 'error')} ">
	<label for="receivedBy">
		<g:message code="studentAccount.receivedBy.label" default="Received By" />
		
	</label>
	<g:textField name="receivedBy" value="${studentAccountInstance?.receivedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentAccountInstance, field: 'roll', 'error')} required">
	<label for="roll">
		<g:message code="studentAccount.roll.label" default="Roll" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="roll" type="number" value="${studentAccountInstance.roll}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentAccountInstance, field: 'sname', 'error')} ">
	<label for="sname">
		<g:message code="studentAccount.sname.label" default="Sname" />
		
	</label>
	<g:textField name="sname" value="${studentAccountInstance?.sname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentAccountInstance, field: 'toDate', 'error')} required">
	<label for="toDate">
		<g:message code="studentAccount.toDate.label" default="To Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="toDate" precision="day"  value="${studentAccountInstance?.toDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: studentAccountInstance, field: 'totalFee', 'error')} required">
	<label for="totalFee">
		<g:message code="studentAccount.totalFee.label" default="Total Fee" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="totalFee" type="number" value="${studentAccountInstance.totalFee}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentAccountInstance, field: 'tutionFee', 'error')} required">
	<label for="tutionFee">
		<g:message code="studentAccount.tutionFee.label" default="Tution Fee" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tutionFee" type="number" value="${studentAccountInstance.tutionFee}" required=""/>
</div>

