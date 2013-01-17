package com.fonantrix.tm.quartz.helper

import org.quartz.Scheduler;
import org.quartz.CronScheduleBuilder;
import org.quartz.CronTrigger;
import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.JobKey;
import org.quartz.Scheduler;
import org.quartz.SchedulerFactory;
import org.quartz.Trigger;
import org.quartz.TriggerBuilder;
import org.quartz.impl.StdSchedulerFactory

class QuartzSchedulerHelper {

	
	Scheduler scheduler;
	

	public QuartzSchedulerHelper() {
		SchedulerFactory factory=new StdSchedulerFactory();
		scheduler=factory.getScheduler()
		
	}

	def schedulejob(String email,String pass )
	{
		Map<JobDetail, List<Trigger>> triggersAndJobs = new HashMap<JobDetail, List<Trigger>>();
		List<Trigger> triggerList=new ArrayList<Trigger>();
		triggerList.add("0/6 * * * * ?")
		String groupName=email;
		String jobName=email+"job";
		JobKey jobkey=new JobKey(jobName,groupName);
		String triggerName=jobName;
		
		CronTrigger trigger = (CronTrigger) TriggerBuilder.newTrigger()
		.withIdentity(jobName, groupName)
		.withSchedule(CronScheduleBuilder.cronSchedule("2/30 * * * * ?"))
		.build();
		
		JobDetail job = JobBuilder.newJob(MailSender.class)
		.withIdentity(jobkey)
		.usingJobData("groupName",groupName)
		.usingJobData("jobName",jobName)
		.usingJobData("email",email)
		.usingJobData("pass",pass)
		.build();
		
		triggersAndJobs.put(job, triggerList);
		
		if(!scheduler.isStarted())
		{
			scheduler.start();
		}
		
		scheduler.scheduleJob(job, trigger);
		
		
		
	}
	
}
