<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body>
	
	<g:form class="form-horizontal" controller="contact" action="send">

	<div id="legend" class="">
			<div class="control-group">
			<label class="control-label" for="EmailID">EmailID</label>
			<div class="controls">
			<input type="text" name="mailid" class="input-xLarge" size="20" />
			</div>
		</div>

		<div class="control-group">
			<label class="control-label" for="QuerySub">QuerySub</label>
			<div class="controls">
			<input type="text" name="subject" class="input-xLarge" size="20" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="QueryDetails">QueryDetails</label>
			<div class="controls">
			<g:textArea name="details" class="input-xLarge" rows="5" cols="40"/>
			</div>
        </div>
        <div class="control-group">
			<div class="controls">
			<button type="submit" class="btn btn-succes" data-dismiss="modal" >SubmitQuery</button>
			</div>
		</div>
         </div>
       </g:form>
      
</body>
</html>
