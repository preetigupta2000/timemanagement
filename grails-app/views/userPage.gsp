<!DOCTYPE html>
<html lang="en">
  <head>
	
			<g:javascript src="/libs/jquery-1.7.2.min.js"></g:javascript>
	    <g:javascript src="modal.js"></g:javascript>
  </head>
  <body>
   <div class="container maincontainer">
    <div>
   	 
   	 <a type="button" class="btn" style="width:10%;" href="#test_modal_user" data-toggle="modal">Add New User</a>
    </div>
    <g:if test="${flash.message}">
    <div>${flash.message}</div>
    </g:if>
  	<table class="table table-striped">
  		<thead>
  			<tr>
  				<th>User Name</th>
  				<th>First Name</th>
  				<th>Last Name</th>
  				<th>E-Mail ID</th>
  				<th>Password</th>
  				<th>IS-Active?</th>
  				
  				
  				
  			</tr>
  		</thead>
  		<tbody>
			<g:each in="${user}" status="i" var="UserPage">
	  			<tr>
	  				<td>${fieldValue(bean:UserPage, field:'username')}</td>
	  				<td>${fieldValue(bean:UserPage, field:'firstname')}</td>
	  				<td>${fieldValue(bean:UserPage, field:'lastname')}</td>
	  				<td>${fieldValue(bean:UserPage, field:'email')}</td>
	  				<td>${fieldValue(bean:UserPage, field:'password')}</td>
	  				<td>${fieldValue(bean:UserPage, field:'active')}</td>
	  				
	  				 
	  				<td>
	  				
	  				<g:link id="${fieldValue(bean:UserPage, field:'id')}" class="confirm-delete" controller="UserPage" action="edit"><i class="icon-pencil" title="Edit"></i></g:link> | <g:link id="${fieldValue(bean:UserPage, field:'id')}" class="confirm-delete" controller="UserPage" action="delete" data-confirm="Are you sure you want to delete?"><i class="icon-trash" title="Delete" ></i></g:link></td>
	  			</tr>
	  		</g:each>
  		</tbody>
  	</table>
   </div>
   
   <div class="modal fade" id="test_modal_user">
  <div class="modal-header">
    <a class="close" data-dismiss="modal">&times;</a>
    <h3>Add User</h3>
  </div>
  <div class="modal-body">
    
    <div class="container maincontainer">
<g:form class="form-horizontal" controller="UserPage" action="save">
<fieldset>
<div id="legend" class="">

</div>
<div class="control-group">

<!-- Text input-->
<label class="control-label" for="input01">User Name</label>
<div class="controls">
<g:textField name="username" placeholder="Please enter User Name" class="input-xlarge" value="${form?.username}"></g:textField>
</div>
</div>

<div class="control-group">

<!-- Text input-->
<label class="control-label" for="input01">First Name</label>
<div class="controls">
<g:textField name="firstname" placeholder="Please enter First Name" class="input-xlarge" value="${form?.firstname}"></g:textField>
</div>
</div>


<div class="control-group">

<!-- Text input-->
<label class="control-label" for="input01">Last Name</label>
<div class="controls">
<g:textField name="lastname" placeholder="Please enter the Last Name" class="input-xlarge" value="${form?.lastname}"></g:textField>
</div>
</div>

<div class="control-group">

<!-- Text input-->
<label class="control-label" for="input01">Email ID</label>
<div class="controls">
<g:textField name="email" placeholder="Please enter the Email ID" class="input-xlarge" value="${form?.email}"></g:textField>
</div>
</div>

<div class="control-group">

<!-- Text input-->
<label class="control-label" for="input01">Password</label>
<div class="controls">
<g:textField name="password" placeholder="Please enter the Password" class="input-xlarge" value="${form?.password}"></g:textField>
</div>
</div>

<div class="control-group">
<!-- Text input-->
<label class="control-label" for="input01">IS-Active?</label>
<div class="controls">
<select name="active" class="input-xlarge" ><option value="YES">YES</option><option value="NO">NO</option></select>
</div>
</div>


<div class="control-group">
<!-- Button -->
<div class="controls">
<button class="btn btn-success">Add User</button>
<a href="#" class="btn btn-succes" data-dismiss="modal">Cancel</a>
</div>
</div>
</fieldset>
</g:form>
  </div>
  </div>
  </body>
</html>
