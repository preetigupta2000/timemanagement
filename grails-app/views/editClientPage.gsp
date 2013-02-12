<!DOCTYPE html>
<html lang="en">
<head>
	<meta name="layout" content="mainlayout">
</head>
			<body>
			<div class="container maincontainer">
			<g:form method="post" controller="ClientPage" action="update">
			 <div id="legend" class="">
	        <h2>Edit New Client</h2>
	      </div>
			<input type="hidden" name="id" value="${fieldValue(bean:client,field:'id')}" />
			<table class="table table-striped">
			<thead>
			
			</thead>
			<tbody>
			<tr>
			<td><label for="client">Client Name:</label></td>
			<td><input type="text" id="client" name="name" value="${fieldValue(bean:client,field:'name')}"/>
			</td>
			</tr>
			<tr>
			<td>
			<label for="clientDescription">Client Description:</label></td>
			<td><input type="text" id="clientDescription" name="description" value="${fieldValue(bean:client,field:'description')}"/>
			</td>
			</tr>
			
			</tbody>
			</table>
			
			<div class="buttons">
			  <button class="btn btn btn-primary">Update</button>
	             <button class="btn btn btn-primary">Cancel</button>
			</g:form> </div>
			</div>
			
			</body>
</html>
