   <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
      	<div class="container-fluid">
			<a class="btn btn-navbar" data-target=".nav-collapse" data-toggle="collapse">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			</a>
		<a class="brand">
			<img src="images/fonantrix-logo.png" alt="Logo" id="f-logo"/>
			<span class="address">x Acton MA</span>
		</a>
          <div class="nav-collapse collapse">
            <ul class="nav pull-right">
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-cog"></i> Settings <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li class="nav-header">Nav header</li>
                  <li><a href="#">Separated link</a></li>
                  <li><a href="#">One more separated link</a></li>
                </ul>
              </li>
			  <li><a href="#about"><i class="icon-question-sign"></i> Help</a></li>			  
			  <li><a href="/timemanagement">Home</a></li>
			  <li><g:link controller="logout" action="logout">Logout</g:link></li>
            </ul>
          </div><!--/.nav-collapse -->
      </div>
    </div>
   </div>
   	<script type="text/javascript">
function logout()
{
	window.location='/timemanagement/Login/index'
	}

	</script>