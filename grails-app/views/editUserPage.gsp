<!DOCTYPE html>
<html lang="en">
<head>
	
</head>
			<body>
			<div class="container maincontainer">
			<g:form method="post" controller="UserPage" action="update">
			 <div id="legend" class="">
	        <h2>Edit New User</h2>
	      </div>
			<input type="hidden" name="id" value="${fieldValue(bean:user,field:'id')}" />
			<table class="table table-striped">
			<thead>
			
			</thead>
			<tbody>
			<tr>
			<td><label for="username">User Name:</label></td>
			<td><input type="text" id="username" name="username" value="${fieldValue(bean:user,field:'username')}"/>
			</td>
			</tr>
			<tr>
			<td>
			<label for="firstname">First Name:</label></td>
			<td><input type="text" id="firstname" name="firstname" value="${fieldValue(bean:user,field:'firstname')}"/>
			</td>
			</tr>
			
			<tr>
			<td>
			<label for="lastname">Last Name:</label></td>
			<td><input type="text" id="lastname" name="lastname" value="${fieldValue(bean:user,field:'lastname')}"/>
			</td>
			</tr>
			
			<tr>
			<td>
			<label for="email">Email ID:</label></td>
			<td><input type="text" id="email" name="email" value="${fieldValue(bean:user,field:'email')}"/>
			</td>
			</tr>
			
			<tr>
			<td>
			<label for="password">Password:</label></td>
			<td><input type="text" id="password" name="password" value="${fieldValue(bean:user,field:'password')}"/>
			</td>
			</tr>
			
			<tr>
			<td>
			<label for="active">IS-Active?:</label></td>
			<td><input type="text" id="active" name="active" value="${fieldValue(bean:user,field:'active')}"/>
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
