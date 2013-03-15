package com.fonantrix.tm

class ContactController 

{
	def grailsApplication
	def contactdetails = {
		//System.out.println("InsideContactController");
		render(view: "/ContactPage");
		//System.out.println("Working");
	}
	def setTabVarValue = {
		grailsApplication.config.globalTabVar = "contactTab"
		render("contactTab");
	
}
	def send={
		
		sendMail {
			to "sanjib.dhar@fonantrix.com"
			cc params.mailid
			subject params.subject
			body params.details
		 }
		
		redirect(controller:"welcomePage",action: "contactdetails")
		
	}
	
}	
