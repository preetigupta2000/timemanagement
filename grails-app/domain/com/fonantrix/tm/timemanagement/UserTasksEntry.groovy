package com.fonantrix.tm.timemanagement

class UserTasksEntry {
	String user;
	String project;
	String task;
	int expectedTime;
	int actualTime;
		  static constraints={
		// to get it in the order I want in views
		user()
		project()
		task()
		expectedTime()
		actualTime()
	
		
	}

}
