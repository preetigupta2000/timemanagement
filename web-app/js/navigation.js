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


$('#add').click(function(){
	
	
	jQuery.get(                                                                         
			"/timamanagement/project/save",                                                               		                                                       
			function(data){    	                                                                       
	    	jQuery("#projectTab").html(data);                                                         
			},                                                                                         
			'html'    	   	                                                                           
	    	)	


});