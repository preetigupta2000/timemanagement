function showPage(url,idd)
{
	jQuery.get(                                                                                
			url,                                                               		                                                       
			function(data){    	                                                                       
	    	jQuery("#"+idd).html(data);                                                         
			},                                                                                         
			'html'    	   	                                                                           
	    	)	
}
function setTabValue(url)
{
	jQuery.get(                                                                                
			url,                                                               		                                                       
	    	function(data){    	                                                                       
	    	jQuery("#globalTabValue").val(data);                                                         
	    	},                                                                                         
	    	'html'    	   	                                                                           
	    	)	
}

$('#add').click(function(){
	
	
	jQuery.get(                                                                         
			"/timamanagement/project/save",                                                               		                                                       
			function(data){    	                                                                       
	    	jQuery("#projectTab").html(data);                                                         
			},                                                                                         
			'html'    	   	                                                                           
	    	)	


});

function selectTab()
{
	
	var globalTabVariable = jQuery("#globalTabValue").val()
	var totalLinks = $('ul.tabs').find('li');
	jQuery.each(totalLinks, function(i, val) {
		$(this).removeClass('active');
	});
	if(globalTabVariable == undefined || globalTabVariable == "" || globalTabVariable == "userTaskEntryTab")
	{
		$('a[href=#userTaskEntryTab]').click();
		$('a[href=#userTaskEntryTab]').parent().addClass('active');
		$('#userTaskEntryTab').addClass('active');
	}
	if(globalTabVariable == "clientTab")
	{
		$('a[href=#clientTab]').click();
		$('a[href=#clientTab]').parent().addClass('active');
		$('#clientTab').addClass('active');
	}
	if(globalTabVariable == "projectTab")
	{
		$('a[href=#projectTab]').click();
		$('a[href=#projectTab]').parent().addClass('active');
		$('#projectTab').addClass('active');
	}
	if(globalTabVariable == "taskTab")
	{
		$('a[href=#taskTab]').click();
		$('a[href=#taskTab]').parent().addClass('active');
		$('#taskTab').addClass('active');
	}
	if(globalTabVariable == "userTab")
	{
		$('a[href=#userTab]').click();
		$('a[href=#userTab]').parent().addClass('active');
		$('#userTab').addClass('active');
	}
	
}
