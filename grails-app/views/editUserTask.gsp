<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="mainlayout">
  </head>
  <body>
  
  
  
  <div class="modal fade" id="test_modal">
  <div class="modal-header">
    <a class="close" data-dismiss="modal">&times;</a>
    <h3>Modal Header</h3>
  </div>
  <div class="modal-body">
 
 
 
 
    
  </div>
  <div class="modal-footer">
    <a href="#" class="btn" data-dismiss="modal">Close</a>
    <a href="#" class="btn btn-primary">Save Changes</a>
  </div>
</div>
  
  
  
  
  
  
   <div class="container maincontainer">
   <g:form method="post" controller="UserTaskEntry" action="update">
    <input type="hidden" name="id" value="${fieldValue(bean:usertasksentry,field:'id')}" />
  	<table class="table table-striped">
  		<thead>
  			
  		</thead>
  		
  	</table>   <h2>Edit User Task Entry</h2>
	     
			<tbody>
			<tr>
			<td><label for="user">User:</label></td>
			<td><input type="text" id="user" name="user" value="${fieldValue(bean:users,field:'users')}"/>
			</td>
			</tr>
			<tr>
			<td>
			<label for="project">Project:</label></td>
			<td><input type="text" id="project" name="project" value="${fieldValue(bean:usertaskentry,field:'project')}"/>
			</td>
			</tr>
			
			<tr>
			<td>
			<label for="lastname">Task:</label></td>
			<td><input type="text" id="task" name="task" value="${fieldValue(bean:usertaskentry,field:'task')}"/>
			</td>
			</tr>
						
			</tbody>
			</table>
			

  	 <div class="buttons">
                    <button class="btn btn-success">update</button>
                    <button class="btn btn-success">Cancel</button>
       </g:form>         </div>
   </div>
     	
  </body>
</html>