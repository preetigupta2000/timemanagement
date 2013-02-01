package com.fonantrix.tm.timemanagement

class UserPage {
	String username
	String firstname
	String lastname
	String email
	String password
	String active

    static constraints = {
		 username(blank:false)
		 firstname(blank:false)
		 lastname(blank:false)
		 email(blank:false)
		 password(blank:false)
		 active(blank:false)
		
    }
}
