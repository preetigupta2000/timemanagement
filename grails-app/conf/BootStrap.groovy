import com.fonantrix.tm.authenticate.Role
import com.fonantrix.tm.authenticate.User
import com.fonantrix.tm.authenticate.UserRole


class BootStrap {
	
    def init = { servletContext ->
		
		springsecurityinit(servletContext)
  }
  def springsecurityinit = { servletContext ->
	  new Role(authority: 'ROLE_USER').save(failOnError: true, flush: true)
	  def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
	  def testUser = new User(username: 'test@fn.com', email: 'test@fn.com', enabled: true, password: 'fonantrix')
	  testUser.save(flush: true)
	  UserRole.create testUser, adminRole, true
  }
  
  def destroy = {
  }
}
