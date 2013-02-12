<!DOCTYPE html>
<html lang="en">
  <head>
	
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
   <g:form method="post" controller="Project" action="update">
    <input type="hidden" name="id" value="${fieldValue(bean:projects,field:'id')}" />
  	<table class="table table-striped">
  		<thead>
  			
  		</thead>
  		<tbody>
			<tr>
			<td><label for="Project">Project:</label></td>
			<td><input type="text" id="project" name="projectName" value="${fieldValue(bean:projects,field:'projectName')}"/>
			</td>
			</tr>
			<tr>
			<td>
			<label for="author">Project Description:</label></td>
			<td><input type="text" id="projectDescription" name="projectDescription" value="${fieldValue(bean:projects,field:'projectDescription')}"/>
			</td>
			</tr>
			<tr>
			<td>
			<label for="author">Client Id:</label></td>
			<td><input type="text" id="clientId" name="clientId" value="${fieldValue(bean:projects,field:'clientId')}"/>
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