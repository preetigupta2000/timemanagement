<!DOCTYPE html>
<html lang="en">
<head>
<meta name="layout" content="mainlayout">

</head>
<body>
<div class="container maincontainer">
<g:form class="form-horizontal" controller="Task" action="save">
<fieldset>
<div id="legend" class="">
<legend>Add a new task</legend>
</div>
<div class="control-group">

<!-- Text input-->
<label class="control-label" for="input01">Task</label>
<div class="controls">
<g:textField name="task" placeholder="Please enter task name" class="input-xlarge" value="${form?.task}"></g:textField>
</div>
</div>

<div class="control-group">

<!-- Text input-->
<label class="control-label" for="input01">Task Description</label>
<div class="controls">
<g:textField name="taskDescription" placeholder="Please enter task description" class="input-xlarge" value="${form?.taskDescription}"></g:textField>
</div>
</div>

<div class="control-group">

<!-- Text input-->


</div>

<div class="control-group">

<!-- Text input-->
<label class="control-label" for="input01">Project Id</label>
<div class="controls">
<g:textField name="projectId" placeholder="Please enter the task Id" class="input-xlarge" value="${form?.taskId}"></g:textField>
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
<button class="btn btn-success">Add a new task</button>
</div>
</div>

</fieldset>
</g:form>
</div>

</body>
</html>
