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
				<form class="well" action="userlogin.html" method="post"  accept-charset="utf-8" enctype="application/x-www-form-urlencoded">
					<h3>Sign In</h3>
					<p>Enter your username (or email-id) followed by your password.</p>
					<div class="input-prepend">
						<span class="add-on"><i class="icon-user"></i></span>
						<input type="email" id="userId" name="userId"  placeholder="User Name" required>
					</div>
					<div class="input-prepend">
						<span class="add-on"><i class="icon-lock"></i></span>
						<input type="password" name="password" placeholder="Password" required>
					</div>
					<label class="checkbox">
					<input type="checkbox" name="remember">Remember Me</label>
					<div id="log-in-div">
						<button id="login_in_submit" class="btn btn-large" type="submit">Log in</button>
						<button id="forget_password" class="btn btn-large" type="submit">Forget Password</button>						
					</div>
				</form>			
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
