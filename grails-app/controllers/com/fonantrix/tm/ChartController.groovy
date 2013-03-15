package com.fonantrix.tm
import  com.fonantrix.tm.timemanagement.UserTasksEntry
class ChartController
 {
	 def grailsApplication
	 def viewtable = {
		 
		// def client=ClientPage.list()
		 def usertasksentry=UserTasksEntry.executeQuery(" from UserTasksEntry")
		 String[] taskData = usertasksentry.task
		 
		 def data = "{" + usertasksentry.user + "||" + usertasksentry.project + "||" + usertasksentry.task + "||" + usertasksentry.expectedTime + "||" + usertasksentry.actualTime + "}"
		 System.out.println("Data" + data) 
		 render(view: "/Charts", model: [data: data])
	 }
	 def setTabVarValue = {
		 grailsApplication.config.globalTabVar = "clientTab"
		 render("clientTab");
	
	 }
 }

