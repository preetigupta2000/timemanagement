package com.fonantrix.tm
import  com.fonantrix.tm.timemanagement.Tasks
class TaskController {
	
	def grailsApplication
    def index() { }
	def viewTasks = {
		def tasks=Tasks.executeQuery(" from Tasks")
		
		def task = Tasks.get(params.task)
		if(task) {
			task.properties = params
			task.save()
		}
		render(view: "/Tasks", model: [tasks: tasks])
	}
	def add = {
		render(view: "/addtask");
	}
	def setTabVarValue = {
		grailsApplication.config.globalTabVar = "taskTab"
		render("taskTab")
	}
	def save = {
		ConfigurationHolder.get
		def tasks = new Tasks(params)
		tasks.save()
		redirect(controller:"welcomePage", action: "viewtable")
		//redirect(action: "viewTasks")
	}
	def editTask = {
		System.out.println(params.id);
		Long id=Long.parseLong(params.id);
		def tasks = Tasks.get( params.id)
		//System.out.println(projects.projectName)
		render(view: "/editTask",model: [tasks: tasks]);
 	}
	def update={
		
		def task = Tasks.get(Long.parseLong(params.id))
		if(task) {
			task.properties = params
			task.save()
		}
		
		redirect(controller:"welcomePage", action: "viewtable")
		//redirect(action: "viewTasks")
	}
	def delete={
		def task = Tasks.get( params.id)
		if(task)
		{
			 task.delete()
			flash.message = "Task ${params.id} deleted"
			redirect(controller:"welcomePage", action: "viewtable")
			//redirect(action:viewTasks)
		}
		else
		{
			redirect(controller:"welcomePage", action: "viewtable")
			//redirect(action:viewTasks)
			
		}
		
	}
}
