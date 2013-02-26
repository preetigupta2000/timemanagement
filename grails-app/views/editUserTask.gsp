<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="mainlayout">
	<g:javascript src="/libs/jquery-1.7.2.min.js"></g:javascript>
	<script language=Javascript>
	 jQuery(window).ready(function() {
		   // put all your jQuery goodness in here.
	 var hiddenvalue = jQuery("#myhidden").val();
	 jQuery('select[name=user]').val(hiddenvalue).attr('selected',true);
	 var hiddenvalueproject = jQuery("#myhiddenproject").val();
	 jQuery('select[name=project]').val(hiddenvalueproject).attr('selected',true);
	 var hiddenvaluetask = jQuery("#myhiddentask").val();
	 jQuery('select[name=task]').val(hiddenvaluetask).attr('selected',true);
	 });

    
   </script>
  </head>
  <body onload="changeHiddenInput()">
  
  
  
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
			<td>
			<input type='hidden' id='myhidden' value="${fieldValue(bean:usertasksentry,field:'user')}">
                           <select name="user" class="input-xlarge" id="user1">
                              <option value="user1">User1</option>
                              <option value="user2">User2</option>
                              <option value="user3">User3</option>
                           </select>
                       
			</td>
			</tr>
			<tr>
			<td>
			<label for="project">Project:</label></td><td>
			<input type='hidden' id='myhiddenproject' value="${fieldValue(bean:usertasksentry,field:'project')}">
		
			 <select name="project" class="input-xlarge" id="project1" >
                              <option value="project1">MMC_Drop-2</option>
                              <option value="project2">MMC_Drop-3</option>
                              <option value="project3">IVM</option>
                           </select>
			</td>
			</tr>
			<tr>
			<td>
			<label for="lastname">Task:</label></td>
			<td><input type='hidden' id='myhiddentask' value="${fieldValue(bean:usertasksentry,field:'task')}">
			<select name="task" class="input-xlarge" id="task1">
                              <option value="task1">Task1</option>
                              <option value="task2">Task2</option>
                              <option value="task3">Task3</option>
                           </select>
			</td>
			</tr>
			<tr>
			<td>
			<label for="task">No of Hours:</label></td>
			<td><input type="text" id="noOfHours" name="noOfHours" value="${fieldValue(bean:usertasksentry,field:'noOfHours')}"/>
			</td>
			</tr>
			<tr>
			<td>
			<label for="lastname">Comment:</label></td>
			<td><textarea cols="40" rows="2" id="comment" name="comment" >${fieldValue(bean:usertasksentry,field:'comment')}</textarea>
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