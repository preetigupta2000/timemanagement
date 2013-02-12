<!DOCTYPE html>
<html lang="en">
  <head>
	
  </head>
  
  <body>
  
  <div class="container maincontainer">
	<g:form class="form-horizontal" controller="ClientPage" action="save">
	    <fieldset>
	      <div id="legend" class="">
	        <h2>Add New Client</h2>
	      </div>
	    
	
	    
	
	    <div class="control-group">
	
	          <!-- Text input-->
	          <label class="control-label" for="input01">Client Name</label>
	          <div class="controls">
	            <g:textField  name="name" placeholder="Please enter the Client name" class="input-xlarge" value="${form?.name}"></g:textField>
	            
	          </div>
	        </div>
	
	    <div class="control-group">
	
	          <!-- Text input-->
	          <label class="control-label" for="input01">Client Description</label>
	          <div class="controls">
	            <g:textField  name="description" placeholder="Please enter the Client Description" class="input-xlarge" value="${form?.description}"></g:textField>
	          </div>
	        </div>
	
	  
	
	    <div class="control-group">
	          <!-- Button -->
	          <div class="controls">
	            <button class="btn btn btn-primary">Add</button>
	             <button class="btn btn btn-primary">Cancel</button>
	           
	          </div>
	        </div>
	
	    </fieldset>
  	  </g:form>
  	</div>
  </body>
 </html>