package com.fonantrix.tm.authenticate

class Role {

	String authority

	static mapping = {
		cache true
	}

	static constraints = {
		authority blank: false, unique: false
	}
}
