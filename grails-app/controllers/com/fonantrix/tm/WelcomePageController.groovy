package com.fonantrix.tm
import com.fonantrix.tm.timemanagement.WelcomePage;
class WelcomePageController {

	static allowedMethods = [save: "POST", update: "GET", delete: "GET"]
	
	
    def viewtable = {
		def welcome=WelcomePage.list()
		render(view: "/welcomePage", model: [welcome: welcome])
	}
	def delete = {
		def welcome = WelcomePage.get(params.id)
		welcome.delete(flush: true)
		def welcomeNewList = WelcomePage.list()
		render(view: "/welcomePage", model: [welcome: welcomeNewList])
	}
	def add = {
	
		render(view: "/addNewRecord")
	}
	def save = {
		def welcome = new WelcomePage(params)
		welcome.save()
	    redirect(action: "viewtable")
	}
	def update = {
		def welcome = WelcomePage.get(params.id)
		render(view: "/editWelcomePage")
	}
	def scaffold = WelcomePage 
}
