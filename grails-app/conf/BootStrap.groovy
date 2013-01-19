import com.fonantrix.tm.authenticate.Role
import com.fonantrix.tm.authenticate.User
import com.fonantrix.tm.authenticate.UserRole
import com.fonantrix.tm.timemanagement.WelcomePage

class BootStrap {
	
    def init = { servletContext ->
		
		springsecurityinit(servletContext)
		
			new WelcomePage(date:'06/06/2012', time:"4:30", project:'IVM_1', task:'UI design', details:'Started')
				.save(failOnError: true)
			new WelcomePage(date:'06/06/2012', time:"4:30", project:'IVM_2', task:'UI design', details:'Started')
				.save(failOnError: true)
			new WelcomePage(date:'06/06/2012', time:"4:30", project:'IVM_3', task:'UI design', details:'Started')
				.save(failOnError: true)
			new WelcomePage(date:'06/06/2012', time:"4:30", project:'IVM_4', task:'UI design', details:'Started')
				.save(failOnError: true)
			new WelcomePage(date:'06/06/2012', time:"4:30", project:'IVM_5', task:'UI design', details:'Started')
				.save(failOnError: true)
		
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
