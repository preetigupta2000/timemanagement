import timemanagement.User
import grails.util.GrailsUtil

class BootStrap {
	

    def init = { servletContext ->
    switch(GrailsUtil.environment){
      case "development":
        def admin = new User(login:"admin", password:"admin123", name:"Administrator")
       
        admin.save()
        
        def fonantrix = new User(login:"fonantrix", password:"welcome@123", name:"Fonantrix")
         fonantrix.save()              
      break

      case "production":
      break
    }

  }
  def destroy = {
  }
}
