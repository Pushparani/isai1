package com.imayam.music;

import java.util.Calendar;
import java.util.Timer;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Application Lifecycle Listener implementation class ImayamListener
 *
 */

public class ImayamListener implements ServletContextListener {

 
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	public void contextInitialized(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		 Calendar runDate = Calendar.getInstance();
		  runDate.set(Calendar.DAY_OF_MONTH, 1);
		  runDate.set(Calendar.HOUR_OF_DAY, 0);
		  runDate.set(Calendar.MINUTE, 0);
		  runDate.add(Calendar.MONTH, 1);//set to next month

		  MyTimerTask myTask = new MyTimerTask();
		  Timer myTimer = new Timer();

		  
		  myTimer.schedule(myTask, runDate.getTime());
		//  System.out.println("Date"+runDate.getTime());

		
		
	}
	
}
