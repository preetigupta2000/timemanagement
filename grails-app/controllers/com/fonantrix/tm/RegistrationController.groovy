package com.fonantrix.tm

import com.fonantrix.tm.authenticate.Role
import com.fonantrix.tm.authenticate.User
import com.fonantrix.tm.authenticate.UserRole;
import com.fonantrix.tm.timemanagement.Registration

class RegistrationController {

    def index() { 
		render(view: "/home")
		}
	
	def save = {
	 def userRole =new Role(authority: 'ROLE_USER').save(failOnError: true, flush: true)
	 // def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
	  def testUser = new User(username: params.email, email: params.email, enabled: true, password: params.password)
	//  def adminUser = new User(username: 'admin@fn.com', email: 'admin@fn.com', enabled: true, password: 'admin', isAdmin:true)
	  testUser.save(flush: true)
	 // adminUser.save(flush: true)
	  UserRole.create testUser, userRole, true
	//  UserRole.create adminUser, adminRole, true
			redirect(controller:'main',action:'index')
		//redirect(action: "viewTasks")
	}
}
