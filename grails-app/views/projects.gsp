<!DOCTYPE html>
<html lang="en">
  <head>
  
	
		<g:javascript src="/libs/jquery-1.7.2.min.js"></g:javascript>
		
	    <g:javascript src="modal.js"></g:javascript>
  </head>
  <body>
   <div class="container maincontainer">
    <div>
   	 
   	 <a type="button" class="btn" style="width:10%;" href="#test_modal_project" data-toggle="modal">Add New</a>
    </div>
    <g:if test="${flash.message}">
    <div>${flash.message}</div>
    </g:if>
  	<table class="table table-striped">
  		<thead>
  			<tr>
  				<th>Project Name</th>
  				<th>Project Description</th>
  				<th>Client Id</th>
  				<th>Options</th>
  				
  				
  			</tr>
  		</thead>
  		<tbody>
			<g:each in="${projects}" status="i" var="Projects">
			
	  			<tr>
	  				<td>${fieldValue(bean:Projects, field:'projectName')}</td>
	  				<td>${fieldValue(bean:Projects, field:'projectDescription')}</td>
	  				<td>${fieldValue(bean:Projects, field:'clientId')}</td>
	  				
	  				 
	  				<td>
	  				<g:link id="${fieldValue(bean:Projects, field:'id')}" class="confirm-delete" controller="Project" action="edit"><i class="icon-pencil" title="Edit"></i></g:link> | <g:link id="${fieldValue(bean:Projects, field:'id')}" class="confirm-delete" controller="Project" action="delete" data-confirm="Are you sure you want to delete?"><i class="icon-remove" title="Delete"></i></g:link></td>
	  			</tr>
	  		</g:each>
  		</tbody>
  	</table>
   </div>
   
   <div class="modal fade" id="test_modal_project">
  <div class="modal-header">
    <a class="close" data-dismiss="modal">&times;</a>
    <h3>Add A Project</h3>
  </div>
  <div class="modal-body">
    
    <div class="container maincontainer">
<g:form class="form-horizontal">
<fieldset>
<div id="legend" class="">

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
<g:textField name="clientId" placeholder="Please enter the Client  Id" class="input-xlarge" value="${form?.projectId}"></g:textField>
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
<g:hasErrors bean="${Projects}">
  <ul>
   <g:eachError var="err" bean="${Projects}">
       <li><g:message error="${err}" /></li> 
   </g:eachError>
  </ul>
</g:hasErrors>
<button class="btn btn-success" id="add">Add A Project</button>

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
