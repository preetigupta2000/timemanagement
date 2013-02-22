<!DOCTYPE html>
<%@ page import="org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils" %>
<html lang="en">
  <head>
 
	
		<g:javascript src="/libs/jquery-1.7.2.min.js"></g:javascript>
	    <g:javascript src="modal.js"></g:javascript>
  </head>
  <body>
   <div class="container">
   
    <div class="row">
    <sec:access expression="hasRole('ROLE_ADMIN')"> 
    <a type="button" class="btn span2"  href="#test_modal" data-toggle="modal">Add New User</a>
   	  </sec:access>
    </div>
  
  	<table class="table table-striped table-hover table-bordered table-condensed">
  		<thead>
  			<tr>
  				
  				<th>Client Name</th>
  				<th>Client Description</th>
  				 <sec:access expression="hasRole('ROLE_ADMIN')"> 
  				<th>Action</th>
  			</sec:access>
  			</tr>
  		</thead>
  		<tbody>
  		  
			<g:each in="${client}" status="i" var="ClientPage">
	  			<tr>
	  				 
	  				<td>${fieldValue(bean:ClientPage, field:'name')}</td>
	  				<td>${fieldValue(bean:ClientPage, field:'description')}</td>
	  				 <sec:access expression="hasRole('ROLE_ADMIN')"> 
	  				<td><g:link id="${fieldValue(bean:ClientPage, field:'id')}" class="confirm-delete" controller="ClientPage" action="edit"><i class="icon-pencil" title="Edit"></i></g:link> |  <g:link id="${fieldValue(bean:ClientPage, field:'id')}" class="confirm-delete" controller="ClientPage" data-confirm="Are you sure you want to delete?" value="Delete" action="delete"><i class="icon-trash" title="Delete"></i></g:link></td>
	  			</sec:access>
	  			</tr>
	  		</g:each>
	  		
  		</tbody>
  	</table>
   </div>
   
   <div class="modal fade" id="test_modal">
  <div class="modal-header">
    <a class="close" data-dismiss="modal">&times;</a>
   
  </div>
  <div class="modal-body">
  <div class="container maincontainer">
	<g:form class="form-horizontal" controller="ClientPage" action="save">
	    <fieldset>
	      <div id="legend" class="">
	        <h2>Add New Client</h2>
	      </div>
	    
	    <div class="control-group">
	
	          <!-- Text input-->
	          <label class="control-label" for="input01">Client Name</label>
	          <div class="controls">
	            <g:textField  name="name" placeholder="Please enter the Client name" class="input-xlarge" value="${form?.name}"></g:textField>
	            
	          </div>
	        </div>
	
	    <div class="control-group">
	
	          <!-- Text input-->
	          <label class="control-label" for="input01">Client Description</label>
	          <div class="controls">
	            <g:textField  name="description" placeholder="Please enter the Client Description" class="input-xlarge" value="${form?.description}"></g:textField>
	          </div>
	        </div>
	
	  
	
<div class="control-group">
<!-- Button -->
<div class="controls">
<button class="btn btn-success">Add Client</button>
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

