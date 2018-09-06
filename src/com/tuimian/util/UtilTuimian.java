package com.tuimian.util;

import java.sql.Date;

public class UtilTuimian {
	public static Date StringToDate(String date) {
		Date d=null;
		d=java.sql.Date.valueOf(date);
		return d;
	}
}
