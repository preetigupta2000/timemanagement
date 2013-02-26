package com.fonantrix.tm
import com.fonantrix.tm.timemanagement.ClientPage;
class ClientPageController {
	
	def grailsApplication
	
	def index(){}
	
    def viewtable = {
		
		def client=ClientPage.list()
		render(view: "/clientPage", model: [client: client])
	}
	def setTabVarValue = {
		grailsApplication.config.globalTabVar = "clientTab"
		render("clientTab");
	}
	def delete = {
		def client = ClientPage.get(params.id)
		
		
		if(client) {
			client.delete()
			flash.message = "Client ${params.id} deleted"
			redirect(controller:"welcomePage", action: "viewtable")
			//redirect(action:viewtable)
		}
		
		else
		{
		def clientNewList = ClientPage.list()
		redirect(controller:"welcomePage", action: "viewtable")
		render(view: "/clientPage", model: [client: clientNewList])
		}
	}
	def add = {
	
		render(view: "/addNewClient")
	}
	def save = {
		def client = new ClientPage(params)
		client.save()
		redirect(controller:"welcomePage", action: "viewtable")
	    //redirect(action: "viewtable")
	}
	
	def edit = {
		
		Long id=Long.parseLong(params.id);
		def client = ClientPage.get( params.id)
	
		render(view: "/editClientPage",model: [client: client]);
		
		
		}
		def update={
		def client = ClientPage.get(params.id)
		if(client) {
		client.properties = params
		client.save()
		}
		redirect(controller:"welcomePage", action: "viewtable")
		//redirect(action: "viewtable")
		}
		
	
	def scaffold = ClientPage 
}
