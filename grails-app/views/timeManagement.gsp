<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="mainlayout">
		<g:javascript src="/libs/jquery-1.7.2.min.js"></g:javascript>
	    <g:javascript src="modal.js"></g:javascript>
		<g:javascript src="navigation.js"></g:javascript>
  </head>
  <body>
	<div class="container maincontainer">
      <ul class="tabs">
          <li><a href="#clientTab" data-toggle="tab" onclick="showPage('/timemanagement/ClientPage/viewtable','clientTab');">Client<i class="icon-briefcase"></i></a></li>
          <li><a href="#projectTab" data-toggle="tab" onclick="showPage('/timemanagement/project/viewProjects','projectTab');">Project <i class="icon-folder-open"></i></a></li>
          <li><a href="#taskTab" data-toggle="tab" onclick="showPage('/timemanagement/task/viewTasks','taskTab');">Task<i class="icon-tasks"></i></a></li>
          <li><a href="#userTab" data-toggle="tab" onclick="showPage('/timemanagement/UserPage/viewUser','userTab');">Users <i class="icon-user"></i></a></li>
           <li><a href="#userTaskEntryTab" data-toggle="tab" onclick="showPage('/timemanagement/UserTaskEntry/viewUserTasks','userTaskEntryTab');">User Task Entry</a></li>
	      </ul>
	   <div class="tab-content">
	      <div id="clientTab" class="tab-pane active"></div>
	  	  <div id="taskTab" class="tab-pane"></div>
	  	  <div id="projectTab" class="tab-pane"></div>
	  	  <div id="userTab" class="tab-pane"></div>
	  	  <div id="userTaskEntryTab" class="tab-pane"></div>
  	  </div>
   	</div>
  </body>
</html>