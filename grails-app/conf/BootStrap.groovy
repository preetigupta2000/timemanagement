import com.fonantrix.tm.authenticate.Role
import com.fonantrix.tm.authenticate.User
import com.fonantrix.tm.authenticate.UserRole


class BootStrap {
	
    def init = { servletContext ->
		
		springsecurityinit(servletContext)
  }
  def springsecurityinit = { servletContext ->
	  def userRole =new Role(authority: 'ROLE_USER').save(failOnError: true, flush: true)
	  def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
	  def testUser = new User(username: 'test@fn.com', email: 'test@fn.com', enabled: true, password: 'fonantrix')
	  def adminUser = new User(username: 'admin@fn.com', email: 'admin@fn.com', enabled: true, password: 'admin', isAdmin:true)
	  testUser.save(flush: true)
	  adminUser.save(flush: true)
	  UserRole.create testUser, userRole, true
	  UserRole.create adminUser, adminRole, true
  }
  
  def destroy = {
  }
}
