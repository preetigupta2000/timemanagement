<%@ page import="org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils" %>

<head>
  	<title>Registration Page</title><%--
  	
	<meta name="layout" content="mainlayout">
		--%>
		<g:javascript src="/libs/jquery-1.7.2.min.js"></g:javascript>
	    <g:javascript src="modal.js"></g:javascript>
	
	
	
	<!-- Bootstrap --><%--
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
	--%>	
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'styles.css')}" type="text/css">
	
  </head>

<div id="loginform">
	<sec:ifLoggedIn>
	  <g:form controller="WelcomePage" action="viewtable">
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
							 <g:jasperReport controller="Main" action="createReport" jasper="users" format="PDF" name="All Userss" />
						</div>				
						
				</div>	
				<button class="btn btn-large btn-block">Browse</button>										
				<a href="logout"><button id="logout-button" class="btn btn-large btn-block">Logout</button></a>
			</div>
	    </div>
	  </g:form>
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
				<button class="btn btn-primary btn-large btn-block" id="login-button">
					Login
				</button>
				<%--<button class="btn btn-warning btn-large btn-blockaaaaaaaaa" id="new-useraaaaaaaaaaa" onclick="showPage('/timemanagement/Registration/RegisterUser');">
					Register
					
				</button>
				<g:link url="[action:'RegisterUser',controller:'Registration']" class="btn-register"  >Register Page</g:link>
			--%><%--
				
				<div class="row">
   	 
   	 				<a type="button" class="btn btn-warning btn-large btn-block" href="#registration_page" data-toggle="modal">Register</a>
    			</div>
			
			--%>
			
			<%--<div class="row">
   	 
   				--%>
   				<a type="button" class="btn btn-warning  btn-block" href="#user_registration" data-toggle="modal">Register</a>
    		
    		
    	
			</div>
		</form>
		<div id="loginErrorMessage"></div> 
	</sec:ifNotLoggedIn>
</div>	 			
			
 <div class="modal fade" id="user_registration">
  <div class="modal-header">
    <a class="close" data-dismiss="modal">&times;</a>
    <h3>User Registration</h3>
  </div>
  <div class="modal-body">
    

<g:form class="form-horizontal______" controller="Registration" action="save">



		
					<div class="span3"> 
							<input type="text" name="userName" placeholder="Username">
							<input type="password" name="password" placeholder="Password">
							<input type="password" name="cPassword" placeholder="Cofirm Password">
							<input type="text" name="address" placeholder="Address">
							<input type="text" name="email" placeholder="Email">
							<button type="submit" class="btn span1">Register<i></i></button> 
					</div>

					<div class="registerImage hidden-phone">What Level of Time Management are You At ?<br/><br/>Register and Explore.</div>
					


</g:form></div>			
</div>			