package net.ezens.Intranet.util;

public class XssUtil {
	
	public static String replaceStr(String str) {
		if(str == null || str.trim().equals("")) {
			return "";
			
		}
		
		str = str.replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("'","&#39;");
		str = str.replaceAll("\\(", "&#40;").replaceAll("\\)", "&#41;");
		
		return str;
	}
	
	
	public static String unscript(String data) {
		
		if (data == null || data.trim().equals("")) {
			return "";
		}
		
		String ret = data;
		
		ret = ret.replaceAll("&lt;", "<");
		ret = ret.replaceAll("&gt;", ">");
		ret = ret.replaceAll("&quot;", "\"");
		ret = ret.replaceAll("&amp;", "&");
		ret = ret.replaceAll("&nbsp;",  " ");
		ret = ret.replaceAll("&#40;", "\\(");
		ret = ret.replaceAll("&#41;", "\\)");
		ret = ret.replaceAll("&#39;", "'");
		
		
		return ret;
	}
	
	
}
