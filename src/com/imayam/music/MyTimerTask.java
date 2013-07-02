package com.imayam.music;

import java.util.TimerTask;

public class MyTimerTask extends TimerTask {

	public void run() {
		// do process file stuff

		// System.out.println("MY Rest Code goes here");

		try {
			DataAccess.updatemonthCount();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}