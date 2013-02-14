<!DOCTYPE html>
<html lang="en">
  <head>
  <meta name="layout" content="mainlayout">
	
		<g:javascript src="/libs/jquery-1.7.2.min.js"></g:javascript>
	    <g:javascript src="modal.js"></g:javascript>
  </head>
  <body>
   <div class="container maincontainer">
    <div>
   	 
   	 <a type="button" class="btn" style="width:10%;" href="#test_modal_project" data-toggle="modal">Add a new task</a>
    </div>
    <g:if test="${flash.message}">
    <div>${flash.message}</div>
    </g:if>
  	<table class="table table-striped">
  		<thead>
  			<tr>
  				<th>Task</th>
  				<th>Task Description</th>
  				<th>Project Id</th>
  				<th>Options</th>
  				
  				
  			</tr>
  		</thead>
  		<tbody>
			<g:each in="${tasks}" status="i" var="Tasks">
			
	  			<tr>
	  				<td>${fieldValue(bean:Tasks, field:'task')}</td>
	  				<td>${fieldValue(bean:Tasks, field:'taskDescription')}</td>
	  				<td>${fieldValue(bean:Tasks, field:'projectId')}</td>
	  				
	  				 
	  				<td>
	  				<g:link id="${fieldValue(bean:Tasks, field:'id')}" class="confirm-delete" controller="Task" action="editTask"><i class="icon-pencil" title="Edit"></i></g:link> | <g:link id="${fieldValue(bean:Tasks, field:'id')}" class="confirm-delete" controller="Task" action="delete" data-confirm="Are you sure you want to delete?"><i class="icon-remove" title="Delete"></i></g:link></td>
	  			</tr>
	  		</g:each>
  		</tbody>
  	</table>
   </div>
   
   <div class="modal fade" id="test_modal_project">
  <div class="modal-header">
    <a class="close" data-dismiss="modal">&times;</a>
    <h3>Add a new task</h3>
  </div>
  <div class="modal-body">
    
    <div class="container maincontainer">
<g:form class="form-horizontal" controller="Task" action="save">
<fieldset>
<div id="legend" class="">

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
<g:textField name="projectId" placeholder="Please enter the project  Id" class="input-xlarge" value="${form?.projectId}"></g:textField>
</div>
</div>

<div class="control-group">

<!-- Text input-->
<label class="control-label" for="input01">Options</label>
<div class="controls">
<g:textField name="options" placeholder="Please enter options" class="input-xlarge" value="${form?.options}"></g:textField>
</div>
</div>

<div class="control-group">
<!-- Button -->
<div class="controls">
<g:hasErrors bean="${Tasks}">
  <ul>
   <g:eachError var="err" bean="${Tasks}">
       <li><g:message error="${err}" /></li> 
   </g:eachError>
  </ul>
</g:hasErrors>
<button class="btn btn-success">Add a new task</button>

<a href="#" class="btn btn-succes" data-dismiss="modal">Cancel</a>
</div>
</div>

</fieldset>
</g:form>

    
    
    
    
    
  </div>
  
</div>
 </div>  
   
   
  </body>
</html>
