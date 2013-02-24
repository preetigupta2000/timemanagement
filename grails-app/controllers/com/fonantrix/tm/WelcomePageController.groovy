package com.fonantrix.tm
import com.fonantrix.tm.timemanagement.WelcomePage;
class WelcomePageController {

	static allowedMethods = [save: "POST", update: "GET", delete: "GET"]
	
	
    def viewtable = {
		def welcome=WelcomePage.list() // list of whole data from the database
		render(view: "/timeManagement", model: [welcome: welcome])
	}
	def delete = {
		def welcome = WelcomePage.get(params.id) // this will get the list of a particular id
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
