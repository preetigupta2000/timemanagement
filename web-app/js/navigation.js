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