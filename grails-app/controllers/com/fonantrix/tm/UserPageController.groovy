package com.fonantrix.tm

import com.fonantrix.tm.timemanagement.UserPage

class UserPageController {

    def index() { }
 def viewUser = {
		def user=UserPage.list()
		render(view: "/userPage", model: [user: user])
	}
	def delete = {
		def user = UserPage.get(params.id)
		
		
		if(user) {
			user.delete()
			flash.message = "user ${params.id} deleted"
			redirect(action:viewUser)
		}
		
		else
		{
		def userNewList = UserPage.list()
		render(view: "/userPage", model: [user: userNewList])
		}
	}
	
	def save = {
		def user = new UserPage(params)
		user.save()
	    redirect(action: "viewUser")
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
		redirect(action: "viewUser")
		}
		
	
	def scaffold = UserPage 
}