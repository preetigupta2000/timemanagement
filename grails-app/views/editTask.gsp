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
   <g:form method="post" controller="Task" action="update">
    <input type="hidden" name="id" value="${fieldValue(bean:tasks,field:'id')}" />
  	<table class="table table-striped">
  		<thead>
  			
  		</thead>
  		<tbody>
			<tr>
			<td><label for="Task">Task:</label></td>
			<td><input type="text" id="task" name="task" value="${fieldValue(bean:projects,field:'task')}"/>
			</td>
			</tr>
			<tr>
			<td>
			<label for="author">Task Description:</label></td>
			<td><input type="text" id="taskDescription" name="taskDescription" value="${fieldValue(bean:projects,field:'taskDescription')}"/>
			</td>
			</tr>
			<tr>
			<td>
			<label for="author">Project Id:</label></td>
			<td><input type="text" id="projectId" name="projectId" value="${fieldValue(bean:projects,field:'projectId')}"/>
			</td>
			</tr>
			<tr>
			<td>
			<label for="author">Options:</label></td>
			<td><input type="text" id="options" name="options" value="${fieldValue(bean:projects,field:'options')}"/>
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