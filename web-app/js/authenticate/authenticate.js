Authenticate = new function() {

	this.authAjax = function(){
		$("#loginErrorMessage").hide();
		$($("#ajaxLoginForm").find("input[type=email]")).removeClass("invalid-name");
		$($("#ajaxLoginForm").find("input[type=password]")).removeClass("invalid-name");
		var form = document.ajaxLoginForm; 
		$.ajax({
 			url: form.action,
 			type: 'POST',
	    	data: { 
	    		j_username: form.j_username.value,
	    		j_password:  form.j_password.value
	    	},
	        success: function(response) {
				if (response.success) { 
alert("sucess");						
				} else {			
					$("#loginErrorMessage").show();
					var errorMessage = "";
					if (response.error) {
						errorMessage = response.error;						
					} else {
						errorMessage = response;
					}
					$("#loginErrorMessage").html("<span class='errorMessage'>" + errorMessage + "</span>");
					$($("#ajaxLoginForm").find("input[type=email]")).addClass("invalid-name");
					$($("#ajaxLoginForm").find("input[type=password]")).addClass("invalid-name");
				} 
	        }
	    });		    
  	},
  
	this.logout = function(){
		ajaxLogout();		  
	},
		
	function ajaxLogout() {
		$.ajax({
			url: com.compro.cgrails.REQUEST_CONTEXT + "/j_spring_security_logout",
			type: 'GET',    	
			success: function(response) {

			}
		});
	}
};