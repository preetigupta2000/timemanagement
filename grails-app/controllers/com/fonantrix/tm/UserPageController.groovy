package com.fonantrix.tm

import com.fonantrix.tm.timemanagement.UserPage

class UserPageController {
	def grailsApplication
	
    def index() { }
 def viewUser = {
		def user=UserPage.list()
		
		render(view: "/userPage", model: [user: user])
	}
 def setTabVarValue = {
	 grailsApplication.config.globalTabVar = "userTab"
	 render("userTab");
 }
	def delete = {
		def user = UserPage.get(params.id)
		
		
		if(user) {
			user.delete()
			flash.message = "user ${params.id} deleted"
			redirect(controller:"welcomePage", action: "viewtable")
			//redirect(action:viewUser)
		}
		
		else
		{
		def userNewList = UserPage.list()
		redirect(controller:"welcomePage", action: "viewtable")
		//render(view: "/userPage", model: [user: userNewList])
		}
	}
	
	def save = {
		def user = new UserPage(params)
		user.save()
		redirect(controller:"welcomePage", action: "viewtable")
	    //redirect(action: "viewUser")
	}
	
	def edit = {
		
		Long id=Long.parseLong(params.id);
		def user = UserPage.get( params.id)
	
		render(view: "/editUserPage",model: [user: user]);
		
		
		}
		def update={
		def user = UserPage.get(params.id)
		if(user) {
		user.properties = params
		user.save()
		}
		redirect(controller:"welcomePage", action: "viewtable")
		//redirect(action: "viewUser")
		}
		
	
	def scaffold = UserPage 
}