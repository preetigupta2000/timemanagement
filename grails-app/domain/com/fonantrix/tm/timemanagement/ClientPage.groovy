package com.fonantrix.tm.timemanagement

class ClientPage {
	
	String name
	String description
	
    static constraints = {
		
		name(blank:false)
		description(blank:false)
       
   }
}
