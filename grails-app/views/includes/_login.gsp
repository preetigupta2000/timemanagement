<%@ page import="org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils" %>
<div class="login-panel well">
	<sec:ifLoggedIn>
	    <div id="loggedin-container">
	    	<h3> Welcome back</h3>
	    	<div class="hero-unit">
				<div id="user-info">
						<div class="profile-image">
							<a><i class="icon-user"></i></a>
						</div>	
						<div>
							<p><strong>${username}</strong></p>
							<p><small>${email}</small></p>
						</div>				
						
				</div>	
				<button class="btn btn-large btn-block">Browse</button>										
				<a href="http://${request.getServerName()}:8080${request.getContextPath()}/j_spring_security_logout"><button id="logout-button" class="btn btn-large btn-block">Logout</button></a>
			</div>
	    </div>
	</sec:ifLoggedIn>
	<sec:ifNotLoggedIn>
		<form action="${request.contextPath}/j_spring_security_check" method='POST' id='ajaxLoginForm' name='ajaxLoginForm'>
			<h3>Sign In</h3>
			<p>Enter your username (or email-id) followed by your password.</p>
			<div id="loginErrorMessage"></div>
	 		<label><g:message code="login.enter_credentials" /></label>
			<fieldset>
				<span class="add-on"><i class="icon-user"></i></span>
				<input type="text" id="username" name="j_username" class="input-xlarge" type="email" placeholder="email" required>
				<br/>
				<span class="add-on"><i class="icon-lock"></i></span>
				<input type="password" id="j_password" name="j_password" class="input-xlarge" placeholder="password" required>
			</fieldset> 
			<button class="btn btn-large btn-block">
				Login
			</button> 
		</form>
		<div id="loginErrorMessage"></div> 
	</sec:ifNotLoggedIn>
</div>		
			