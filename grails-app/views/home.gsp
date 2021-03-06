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
			<h2>iTime <small>Mobile Time Management</small></h2>
			<p>Ordinary people think merely of spending time. Great people think of using it.</p>
			<hr/>
			<p>Time is the school in which we learn, time is the fire in which we burn.</p>
			<hr/>
        </div>
        <div class="span5">
        <sec:ifLoggedIn>
			<g:link controller="welcomePage" action="viewtable"><h2>Welcome <strong>${sec.username()}</strong></h2></g:link>
			</sec:ifLoggedIn>
			<sec:ifNotLoggedIn>
			<g:render template="/includes/login"/>
			</sec:ifNotLoggedIn>
        </div>
      </div>

	 <div class="row hidden-phone hidden-tablet">
	    <div class="span12">
			<h3>What Level of Time Management are You At?</h3>
		</div>
	 </div>	
	
 
 <div class="row hidden-phone hidden-tablet">
		  <div class="span3 media ">
			<div class="level">
				<img alt="Level 1" class="pull-left" src="images/human.png">
				<div class="media-body">
					<h4>Level 1</h4>
					<h4>The Oblivious</h4>
				</div>
				<p>People on this end of the spectrum have no concern or any idea where there time is being spent. They are easily tossed to and fro by the most fickle of circumstances. Oftentimes, because they are constantly letting any interruption affect them, they have a hard time keeping appointments or remembering things that they needed to get done.</p>
			</div>
		  </div>
		  <div class="span3 media ">
			<div class="level">
				<img alt="Level 2" class="pull-left" src="images/bulb.png">
				<div class="media-body">
					<h4>Level 2</h4>
					<h4>Becoming Aware</h4>
				</div>
				<p>As one assumes more responsibilities in life, an awareness of time (or an awareness of the lack of time) begins to develop. All of the pressures of life: the job, the bills, the kids begin to weigh upon us. Before long we notice that it's the end of the day and we haven't finished half the things we needed to get done. Sometimes we forget them alltogether.</p>
			</div>
		  </div>
		  
		  <div class="span3 media ">
			<div class="level">
				<img alt="Level 3" class="pull-left" src="images/man.png">
				<div class="media-body">
					<h4>Level 3</h4>
					<h4>Discarding The Useless</h4>
				</div>
				<p>Natural progression toward wanting more time begins our journey into the development of time-management skills. No longer are we satisfied in just finishing certain tasks, instead, we begin to assign tasks to certain times of the day. We start using calendars and iTime.</p>
			</div>
		  </div>
		  
		  <div class="span3 media">
			<div class="level">
				<img alt="kaizen" class="pull-left" src="images/symbol.png">
				<div class="media-body">
					<h4>Level 4</h4>
					<h4>Kaizen</h4>
				</div>
				<p>If you've arrived at that place where you are operating in Level 3, perhaps you'd like to go a little further. I'm talking about a lifestyle of excellence, where highly-effective people function. They live by the philosophy of Kaizen. Kaizen is a Japanese term used in business. Its origins lie in the auto-manufacturing industry. In English, it is defined as "constant and never-ending improvement".</p>
			</div>
		  </div>
	</div>
</div>
	 

</body>
</html>

