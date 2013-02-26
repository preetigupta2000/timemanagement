<!DOCTYPE html>
<html lang="en">
<head>
<meta name="layout" content="mainlayout">

</head>
<body>
<div class="container maincontainer">
<g:form class="form-horizontal" controller="UserTaskEntry" action="save">
<fieldset>
<div id="legend" class="">
<legend>Add user task entry</legend>
</div>
<div class="control-group">

<!-- Text input-->
<label class="control-label" for="input01">User</label>
<div class="controls">
<select name="user" class="input-xlarge" ><option value="user1">User1</option><option value="user2">User2</option><option value="user3">User3</option></select>
</div>
</div>

<div class="control-group">

<!-- Text input-->
<label class="control-label" for="input01">Project</label>
<div class="controls">
<select name="project" class="input-xlarge" ><option value="project1">MMC_Drop-2</option><option value="project2">MMC_Drop-3</option><option value="project3">IVM</option></select>
</div>
</div>

<div class="control-group">

<!-- Text input-->


</div>

<div class="control-group">

<!-- Text input-->
<label class="control-label" for="input01">Task</label>
<div class="controls">
<select name="active" class="input-xlarge" ><option value="task1">Task1</option><option value="task2">Task2</option><option value="task3">Task3</option></select>
</div>
</div>

<div class="control-group">

<!-- Text input-->
<label class="control-label" for="input01">No Of Hours</label>
<div class="controls">
<g:textField name="noOfHours" placeholder="Please enter no of hours" class="input-xlarge" value="${form?.noOfHours}"></g:textField>
</div>
</div>
<div class="control-group">
                        <!-- Text input-->
                        <label class="control-label" for="input01">Comments</label>
                        <div class="controls">
                        <g:textArea name="comment" placeholder="Please enter comments" class="input-xlarge" value="${form?.comment}" rows="5" cols="40"></g:textArea>
                        </div>
                     </div>
<div class="control-group">
<!-- Button -->
<div class="controls">
<button class="btn btn-success">Add user task entry</button>
</div>
</div>

</fieldset>
</g:form>
</div>

</body>
</html>
