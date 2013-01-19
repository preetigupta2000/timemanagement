<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="mainlayout">
  </head>
  <body>
  <div class="container maincontainer">
	<g:form class="form-horizontal" controller="WelcomePage" action="save">
	    <fieldset>
	      <div id="legend" class="">
	        <legend>Edit Record</legend>
	      </div>
	    <div class="control-group">
	
	          <!-- Text input-->
	          <label class="control-label" for="input01">Date</label>
	          <div class="controls">
	            <g:textField  name="date" placeholder="Please enter in format mm/dd/yy" class="input-xlarge" value="${form.title}"></g:textField>
	          </div>
	        </div>
	
	    <div class="control-group">
	
	          <!-- Text input-->
	          <label class="control-label" for="input01">Time</label>
	          <div class="controls">
	            <g:textField  name="time" placeholder="Please enter in format hh:mm" class="input-xlarge" value="${form.time}"></g:textField>
	          </div>
	        </div>
	
	    <div class="control-group">
	
	          <!-- Text input-->
	          <label class="control-label" for="input01">Project</label>
	          <div class="controls">
	            <g:textField  name="project" placeholder="Please enter the project name" class="input-xlarge" value="${form.project}"></g:textField>
	          </div>
	        </div>
	
	    <div class="control-group">
	
	          <!-- Text input-->
	          <label class="control-label" for="input01">Task</label>
	          <div class="controls">
	            <g:textField  name="task" placeholder="Please enter the task" class="input-xlarge" value="${form.task}"></g:textField>
	          </div>
	        </div>
	
	    <div class="control-group">
	
	          <!-- Text input-->
	          <label class="control-label" for="input01">Details</label>
	          <div class="controls">
	            <g:textField  name="details" placeholder="Please enter the details" class="input-xlarge" value="${form.details}"></g:textField>
	          </div>
	        </div>
	
	    <div class="control-group">
	          <!-- Button -->
	          <div class="controls">
	            <button class="btn btn-success">Save</button>
	          </div>
	        </div>
	
	    </fieldset>
  	  </g:form>
  	</div>
  </body>
 </html>