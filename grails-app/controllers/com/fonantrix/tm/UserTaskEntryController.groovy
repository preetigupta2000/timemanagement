package com.fonantrix.tm
import  com.fonantrix.tm.timemanagement.UserTasksEntry


class UserTaskEntryController {
  
  def grailsApplication
  def index() { }
	def viewUserTasks = {
		
		def usertasksentry=UserTasksEntry.executeQuery(" from UserTasksEntry")
		def usertaskentry = UserTasksEntry.get(params.usertaskentry)
		if(usertaskentry) {
			usertaskentry.properties = params
			usertaskentry.save()
		}
		render(view: "/usertasksentry", model: [usertasksentry: usertasksentry])
	}
	def setTabVarValue = {
		grailsApplication.config.globalTabVar = "userTaskEntryTab"
		render("userTaskEntryTab")
	}
	def add = {
		
		render(view: "/addusertask");
	}
	def save = {
		
		def usertasksentry = new UserTasksEntry(params)
		System.out.println("in save " +params)
		usertasksentry.properties = params
		usertasksentry.save()
		redirect(controller:"welcomePage", action: "viewtable")
		
		}
	def editUserTask = {
		System.out.println(params.id);
		Long id=Long.parseLong(params.id);
		def usertasksentry = UserTasksEntry.get( params.id)
		
		
		render(view: "/editUserTask",model: [usertasksentry: usertasksentry]);
        	
		
	}
	def update={
		
		def usertaskentry = UserTasksEntry.get(Long.parseLong(params.id))
		if(usertaskentry) {
			usertaskentry.properties = params
			usertaskentry.save()
		}
		
		redirect(controller:"welcomePage", action: "viewtable")
		
	}
	def delete={
		def usertaskentry = UserTasksEntry.get( params.id)
		if(usertaskentry)
		{
			 usertaskentry.delete()
			flash.message = "Task ${params.id} deleted"
			redirect(controller:"welcomePage", action: "viewtable")
			
		}
		else
		{
			redirect(controller:"welcomePage", action: "viewtable")
			
		}
		
	}
}

