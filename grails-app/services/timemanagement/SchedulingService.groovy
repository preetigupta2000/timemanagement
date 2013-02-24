package timemanagement

import com.fonantrix.tm.quartz.helper.QuartzSchedulerHelper;



class SchedulingService {

 	QuartzSchedulerHelper helper=new QuartzSchedulerHelper();
	
    def scheduleJob(String name,String pass ) {
		
		helper.schedulejob(name, pass)
				
    }
}
