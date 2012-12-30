<%@ page import="org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils" %>
<div id="loginform">
	<sec:ifLoggedIn>
	    <div id="loggedin-container">
	    	<h3> Welcome back</h3>
	    	<div class="hero-unit">
				<div id="user-info">
						<div class="profile-image">
							<a><i class="icon-user"></i></a>
						</div>	
						<div>
							<p><strong>${sec.username()}</strong></p>
							<p><small>${sec.username()}</small></p>
						</div>				
						
				</div>	
				<button class="btn btn-large btn-block">Browse</button>										
				<a href="logout"><button id="logout-button" class="btn btn-large btn-block">Logout</button></a>
			</div>
	    </div>
	</sec:ifLoggedIn>
	<sec:ifNotLoggedIn>
		<form action="${request.contextPath}/j_spring_security_check" method='POST' id='ajaxLoginForm' name='ajaxLoginForm'>
			<h3>Sign In</h3>
			<h5>Enter your username (or email-id) followed by your password.</h5>
			<div id="loginErrorMessage"></div>
			<div class="hero-unit">
				<div class="input-prepend">
					<span class="add-on"><i class="icon-user"></i></span>
					<input class="span2 input-xlarge" id="username" name="j_username" type="email" placeholder="email" required>
				</div>
				<div class="input-prepend">
					<span class="add-on"><i class="icon-lock"></i></span>
					<input class="span2 input-xlarge" id="j_password" name="j_password" type="Password" placeholder="password" required>
				</div>
				<button class="btn btn-large btn-block" id="login-button">
					Login
				</button> 
			</div>
		</form>
		<div id="loginErrorMessage"></div> 
	</sec:ifNotLoggedIn>
</div>		
			