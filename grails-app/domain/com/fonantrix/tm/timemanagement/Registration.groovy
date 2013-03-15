package com.fonantrix.tm.timemanagement

class Registration {
	
	String userName;
	String password;
	String confirmPassword;
	String address;
	String email;

    static constraints = {
		userName();
		password();
		confirmPassword();
		address();
		email();
    }
	
	
}
