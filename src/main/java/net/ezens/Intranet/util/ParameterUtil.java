package net.ezens.Intranet.util;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;


public class ParameterUtil {
	
    public static boolean isEmpty(HttpServletRequest request, String param) {
        return ((request.getParameter(param) == null) || (request.getParameter(param).equals("")));
    }
 
    public static String getStringParameter(HttpServletRequest request, String param, String def) {
        if (isEmpty(request, param)) {
            return def;
        }
        return request.getParameter(param);
    }
 
/*
 * public static int getIntegerParameter(HttpServletRequest request, String
 * param, int def) { if (isEmpty(request, param)) { return def; } String str =
 * request.getParameter(param); return StringUtil.toInteger(str, def); }
 */
    
    public static String setParameterValue(HttpServletRequest request, String paramName, String paramValue)
            throws UnsupportedEncodingException {
        String queryString = request.getQueryString();
        StringBuilder newQueryString = new StringBuilder();
        String[] parameter = queryString.split("\\&");
 
        for (String s : parameter) {
            String[] p = s.split("\\=");
            if (p.length != 2)
                continue;
            if (p[0].equals(paramName)) {
                p[1] = paramValue;
            }
            p[1] = URLEncoder.encode(p[1], "UTF-8");
            newQueryString.append(p[0] + "=" + p[1] + "&");
        }
 
        return newQueryString.toString();
    }
    public static Map<String, Object> getRequestParameterMap(HttpServletRequest req) {
        Map<String, Object> reqParamMaps = new HashMap<String, Object>();
        Map<String, Object> reqMap = new HashMap<String, Object>();
 
        reqParamMaps.putAll(req.getParameterMap());
        Set<?> keySet = reqParamMaps.keySet();
 
        for (Object key : keySet) {
            Object obj = reqParamMaps.get(key);
            if (obj.getClass().isArray() || Array.getLength(obj) == 1) {
                reqMap.put(key.toString(), Array.get(obj, 0));
            } else {
                reqMap.put(key.toString(), obj);
            }
        }
    return reqMap;
    }
    
    public static String getParam(Object obj, String other) {
    	if(obj == null) return other;
    	
    	String imsi = String.valueOf(obj).trim();
    	if(isBlank(imsi)) {
    		return other;
    	}else {
    		return imsi;
    	}
    }
    
    public static boolean isBlank(String str) {
    	return (str == null || str.length() <= 0);
    }
    
    public static int getParam(Object obj, int other) {
    	try {
    		return Integer.parseInt(String.valueOf(obj).trim());
		} catch (Exception e) {
			return other;
		} 
    }
}


