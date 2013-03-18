<!DOCTYPE html>
<html lang="en">
   <head>
   </head>
   <body>
      <div class="row">
         <a type="button" class="btn span2" href="#test_modal_project" data-toggle="modal">Add a user task entry</a>
      
      <g:if test="${flash.message}">
         <div>${flash.message}</div>
      </g:if>
      <table id="no-more-tables" class="table table-striped">
         <thead>
            <tr>
               <th>User</th>
               <th>Project</th>
               <th>Task</th>
               <th>Expected Time</th>
               <th>Actual time</th>
               <th>Options</th>
            </tr>
         </thead>
         <tbody>
            <g:each in="${usertasksentry}" status="i" var="UserTasksEntry">
               <tr>
                  <td data-title="User">${fieldValue(bean:UserTasksEntry, field:'user')}</td>
                  <td data-title="Project">${fieldValue(bean:UserTasksEntry, field:'project')}</td>
                  <td data-title="Task">${fieldValue(bean:UserTasksEntry, field:'task')}</td>
                  <td data-title="Expected Time">${fieldValue(bean:UserTasksEntry, field:'expectedTime')}</td>
                  <td data-title="Actual time">${fieldValue(bean:UserTasksEntry, field:'actualTime')}</td>
                  <td data-title="Edit | Delete">
                     <g:link id="${fieldValue(bean:UserTasksEntry, field:'id')}" class="confirm-delete" controller="UserTaskEntry" action="editUserTask"><i class="icon-pencil" title="Edit"></i></g:link>
                     | 
                     <g:link id="${fieldValue(bean:UserTasksEntry, field:'id')}" class="confirm-delete" controller="UserTaskEntry" action="delete" data-confirm="Are you sure you want to delete?"><i class="icon-remove" title="Delete"></i></g:link>
                  </td>
               </tr>
            </g:each>
         </tbody>
      </table>
      <div class="modal fade" id="test_modal_project">
         <div class="modal-header">
            <a class="close" data-dismiss="modal">&times;</a>
            <h3>Add a new user task</h3>
         </div>
         <div class="modal-body">
            <div class="container maincontainer">
               <g:form class="form-horizontal" controller="UserTaskEntry" action="save">
                  <fieldset>
                     <div id="legend" class="">
                     </div>
                     <div class="control-group">
                        <!-- Text input-->
                        <label class="control-label" for="input01">Users</label>
                        <div class="controls">
                           <select name="user" class="input-xlarge" >
                              <option value="user1">User1</option>
                              <option value="user2">User2</option>
                              <option value="user3">User3</option>
                           </select>
                        </div>
                     </div>
                     <div class="control-group">
                        <!-- Text input-->
                        <label class="control-label" for="input01">Projects</label>
                        <div class="controls">
                           <select name="project" class="input-xlarge" >
                              <option value="project1">MMC_Drop-2</option>
                              <option value="project2">MMC_Drop-3</option>
                              <option value="project3">IVM</option>
                           </select>
                        </div>
                     </div>
                     <div class="control-group">
                        <!-- Text input-->
                        <label class="control-label" for="input01">Task</label>
                        <div class="controls">
                           <select name="task" class="input-xlarge" >
                              <option value="task1">Task1</option>
                              <option value="task2">Task2</option>
                              <option value="task3">Task3</option>
                           </select>
                        </div>
                     </div>
                     <div class="control-group">
                        <!-- Text input-->
                        <label class="control-label" for="input01">Expected Time</label>
                        <div class="controls">
                           <input type="text" name="expectedTime" class="span3" placeholder="Please enter no of hours">
                        </div>
                     </div>
                     <div class="control-group">
                        <!-- Text input-->
                        <label class="control-label" for="input01">Actual Time</label>
                        <div class="controls">
                           <input type="text" name="actualTime" class="span3" placeholder="Please enter no of hours">
                        </div>
                     </div>
                     <div class="control-group">
                        <!-- Button -->
                        <div class="controls">
                           <g:hasErrors bean="${UserTasksEntry}">
                              <ul>
                                 <g:eachError var="err" bean="${UserTasksEntry}">
                                    <li>
                                       <g:message error="${err}" />
                                    </li>
                                 </g:eachError>
                              </ul>
                           </g:hasErrors>
                           <button class="btn btn-success">Add user task entry</button>
                           <a href="#" class="btn btn-succes" data-dismiss="modal">Cancel</a>
                        </div>
                     </div>
                  </fieldset>
               </g:form>
            </div>
         </div>
      </div>
    </div>
   </body>
</html>

