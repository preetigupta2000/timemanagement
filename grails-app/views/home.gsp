<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="mainlayout">
  </head>

<body>
   <div class="container maincontainer">
      <!-- Example row of columns -->
      <div class="row">
	    <div class="span4 hidden-phone">
			<img src="images/cal.png" alt="" />
		</div>
        <div class="span3">
			<h2>iTime</h2>
			<h3>Mobile Time Management</h3>
			<p>Ordinary people think merely of spending time. Great people think of using it.</p>
			<hr/>
			<p>Time is the school in which we learn, time is the fire in which we burn.</p>
			<hr/>
        </div>
        <div class="span5">
			<div class="login-panel">
				<h3>Sign In</h3>
				<p>Enter your username (or email-id) followed by your password.</p>
				<form action="${request.contextPath}/j_spring_security_check" method='POST' id='ajaxLoginForm' name='ajaxLoginForm'>
					<label><g:message code="login.enter_credentials" /></label>
					<fieldset>
						<span class="add-on"><i class="icon-user"></i></span>
						<input type="text" id="username" name="j_username" class="input-xlarge" placeholder="${message(code: 'login.email')}">
						<br/>
						<span class="add-on"><i class="icon-lock"></i></span>
						<input type="password" name="j_password" class="input-xlarge" placeholder="${message(code: 'login.password')}">
					</fieldset> 
					<button class="btn btn-large" onclick='Authenticate.authAjax(); return false;'>
						<g:message code="login.log_in" />
					</button>                      
				</form>				
				<div id="loginErrorMessage"></div>	
			</div>
        </div>
      </div>

	 <div class="row">
	    <div class="span12">
			<h3>What Level of Time Management are You At?</h3>
		</div>
	 </div>	
	
  </div>
</body>
</html>
