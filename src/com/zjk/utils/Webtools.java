package com.zjk.utils;

import java.io.IOException;
import org.apache.commons.lang.StringEscapeUtils;

public class Webtools {
	

	public static  String Change(String str) throws IOException{
	
		String str1=StringEscapeUtils.escapeHtml(str);
		return str1;
		
		
	}


}
