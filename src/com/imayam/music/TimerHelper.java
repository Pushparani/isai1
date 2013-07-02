package com.imayam.music;

import java.util.*;
import java.util.TimerTask;
public class TimerHelper {
  
   
  public static void main(String args[]){
  Calendar runDate = Calendar.getInstance();
  runDate.set(Calendar.DAY_OF_MONTH, 1);
  runDate.set(Calendar.HOUR_OF_DAY, 0);
  runDate.set(Calendar.MINUTE, 0);
  runDate.add(Calendar.MONTH, 1);//set to next month

  MyTimerTask myTask = new MyTimerTask();
  Timer myTimer = new Timer();

  
  myTimer.schedule(myTask, runDate.getTime());
  System.out.println("Date"+runDate.getTime());

   
  }
}
