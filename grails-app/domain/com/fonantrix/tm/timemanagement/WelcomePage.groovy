package com.fonantrix.tm.timemanagement

class WelcomePage {
	
	
	String date
	String time
	String project
	String task
	String details


    static constraints = {  //preserves order in gsp's
       date()
       time()
       project()
       task()
       details()
   }
}
