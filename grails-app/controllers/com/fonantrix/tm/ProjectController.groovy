package com.fonantrix.tm
import  com.fonantrix.tm.timemanagement.Projects
class ProjectController {

    def index() { }
	def viewProjects = {
		def projects=Projects.executeQuery(" from Projects")
		System.out.println("am "+projects)
		
		def project = Projects.get(params.projectName)
		if(project) {
			project.properties = params
			project.save()
		}
		render(view: "/Projects", model: [projects: projects])
	}
	def add = {
		
		render(view: "/addproject");
	}
	def save = {
		
		def projects = new Projects(params)
		
				projects.save()
		redirect(action: "viewProjects")
		
				
		
		
		
	}
	def edit = {
		System.out.println(params.id);
		Long id=Long.parseLong(params.id);
		def projects = Projects.get( params.id)
		//System.out.println(projects.projectName)
		render(view: "/edit",model: [projects: projects]);
        	
		
	}
	def update={
		
		def project = Projects.get(Long.parseLong(params.id))
		if(project) {
			project.properties = params
			project.save()
		}
		
			
		redirect(action: "viewProjects")
	}
	def delete={
		def project = Projects.get( params.id)
		if(project)
		{
			 project.delete()
			flash.message = "Project ${params.projectName} deleted"
			redirect(action:viewProjects)
		}
		else
		{
			redirect(action:viewProjects)
			
		}
		
	}
}