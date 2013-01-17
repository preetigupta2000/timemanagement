package com.fonantrix.tm.quartz.helper

import org.quartz.Job;
import org.quartz.JobDataMap;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;


class MailSender implements Job{


	MailHelper mailer =new MailHelper();
	@Override
	public void execute(JobExecutionContext context) throws JobExecutionException {
		
	
		JobDataMap dataMap=context.getJobDetail().getJobDataMap();
		String jobname=dataMap.getString("jobName");
		String msgBody=dataMap.getString("msg");
		String email=dataMap.getString("email");
		
		println "Job running! and the job name is:"+jobname+" and the msg body is: "+msgBody+" "+new Date();
		
		
		mailer.sendeMail(email, msgBody); 
		
	}
	

}
