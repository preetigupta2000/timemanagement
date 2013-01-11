package com.fonantrix.tm

import com.fonantrix.tm.authenticate.User

class MainController {
	
	def scaffold = User
	
	def index() {
		render(view: "/home")
	}
	
	def createReport = {
		def users = User.list()
		int count=User.count
		
		chain(controller:'jasper',action:'index',model:[data:users],params:params)
	}
	
}
