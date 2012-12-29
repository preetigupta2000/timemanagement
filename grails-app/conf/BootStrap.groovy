import com.fonantrix.tm.authenticate.Role
import com.fonantrix.tm.authenticate.User
import com.fonantrix.tm.authenticate.UserRole


class BootStrap {
	
    def init = { servletContext ->
		
		springsecurityinit(servletContext)
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
  def springsecurityinit = { servletContext ->
	  new Role(authority: 'ROLE_USER').save(failOnError: true, flush: true)
	  def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
	  def testUser = new User(username: 'test', enabled: true, password: 'fonantrix')
	  testUser.save(flush: true)
	  UserRole.create testUser, adminRole, true
  }
  
  def destroy = {
  }
}
