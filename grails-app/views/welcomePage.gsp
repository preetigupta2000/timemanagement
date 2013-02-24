<!DOCTYPE html>
<html lang="en">
  <head>
	
  </head>
  <body>
   <div class="container maincontainer">
    <div>
   	 <g:link class="add-new" controller="WelcomePage" action="add">Add New</g:link>
    </div>
  	<table class="table table-striped">
  		<thead>
  			<tr>
  				<th>Date</th>
  				<th>Time</th>
  				<th>Project</th>
  				<th>Task</th>
  				<th>Details</th>
  				<th>Action</th>
  			</tr>
  		</thead>
  		<tbody>
			<g:each in="${welcome}" status="i" var="WelcomePage">
	  			<tr>
	  				<td>${fieldValue(bean:WelcomePage, field:'date')}</td>
	  				<td>${fieldValue(bean:WelcomePage, field:'time')}</td>
	  				<td>${fieldValue(bean:WelcomePage, field:'project')}</td>
	  				<td>${fieldValue(bean:WelcomePage, field:'task')}</td>
	  				<td>${fieldValue(bean:WelcomePage, field:'details')}</td>
	  				<td><g:link id="${fieldValue(bean:WelcomePage, field:'id')}" class="confirm-delete" controller="WelcomePage" action="update"><i class="icon-pencil" title="Edit"></i></g:link> | <g:link id="${fieldValue(bean:WelcomePage, field:'id')}" class="confirm-delete" controller="WelcomePage" action="delete"><i class="icon-remove" title="Delete"></i></g:link></td>
	  			</tr>
	  		</g:each>
  		</tbody>
  	</table>
   </div>
  </body>
</html>