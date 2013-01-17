package com.fonantrix.tm.quartz.helper
import org.codehaus.groovy.grails.web.context.ServletContextHolder;
import org.codehaus.groovy.grails.web.servlet.GrailsApplicationAttributes;
import org.codehaus.groovy.grails.commons.GrailsApplication;

class MailHelper {
	
	def appContext = ServletContextHolder.servletContext
	.getAttribute(GrailsApplicationAttributes.APPLICATION_CONTEXT)
  def myService = appContext.mailService

def sendeMail(String email,String msgBody)
{
	myService.sendMail {
		to "bhupender.chauhan@fonantrix.com"
		cc "sanjib.dhar@fonantrix.com"
		bcc "sanjib.dhar@fonantrix.com"
		subject "Hello "+email +".this is a test mail from grails"
		text "you entered passoer: "+msgBody
	 }
}

}
