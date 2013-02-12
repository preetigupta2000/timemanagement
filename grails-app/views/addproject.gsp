<!DOCTYPE html>
<html lang="en">
<head>


</head>
<body>
<div class="container maincontainer">
<g:form class="form-horizontal" controller="Project" action="save">
<fieldset>
<div id="legend" class="">
<legend>Add New Project</legend>
</div>
<div class="control-group">

<!-- Text input-->
<label class="control-label" for="input01">Project Name</label>
<div class="controls">
<g:textField name="projectName" placeholder="Please enter  Project Name" class="input-xlarge" value="${form?.projectName}"></g:textField>
</div>
</div>

<div class="control-group">

<!-- Text input-->
<label class="control-label" for="input01">Project Description</label>
<div class="controls">
<g:textField name="projectDescription" placeholder="Please enter Project Description" class="input-xlarge" value="${form?.projectDescription}"></g:textField>
</div>
</div>

<div class="control-group">

<!-- Text input-->


</div>

<div class="control-group">

<!-- Text input-->
<label class="control-label" for="input01">Client Id</label>
<div class="controls">
<g:textField name="clientId" placeholder="Please enter the Project Id" class="input-xlarge" value="${form?.projectId}"></g:textField>
</div>
</div>

<div class="control-group">

<!-- Text input-->
<label class="control-label" for="input01">Options</label>
<div class="controls">
<g:textField name="options" placeholder="Please enter Options" class="input-xlarge" value="${form?.options}"></g:textField>
</div>
</div>

<div class="control-group">
<!-- Button -->
<div class="controls">
<button class="btn btn-success">Add A Project</button>
</div>
</div>

</fieldset>
</g:form>
</div>







</body>
</html>
