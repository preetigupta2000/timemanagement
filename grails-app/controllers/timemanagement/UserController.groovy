package timemanagement

class UserController {
	def scaffold = User
	
    def login = {}

	def authenticate = {
		
		def user = User.findByLoginAndPassword(params.login, params.password)
		if(user){
		  session.user = user
		  flash.message = "Hello ${user.name}!"
		  redirect(controller:"user", action:"list")
		 
		}else{
		  flash.message = "Sorry, ${params.login}. Please try again."
		  redirect(action:"login")
		}
	  }
	  
	  def logout = {
		flash.message = "Goodbye ${session.user.name}"
		session.user = null
		
	  }
}
