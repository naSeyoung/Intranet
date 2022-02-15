package net.ezens.Intranet.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.Properties;

import org.apache.ibatis.io.Resources;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class PropertyUtil {
	
	protected final static Logger logger = LoggerFactory.getLogger(PropertyUtil.class);
	
	private String prop_file = null;
	public PropertyUtil(String prop_file) {
		logger.info("prop_file :: " + prop_file);
		this.prop_file = prop_file;
	}
	
	public String get(String sFile, String sName) {
		ClassLoader classLoader = PropertyUtil.class.getClassLoader();
		InputStream is = classLoader.getResourceAsStream(sFile);
		
		Properties props = new Properties();
		try {
			props.load(is);
		} catch (Exception e) {
			logger.error("Can't read the properties file. " + 
							"Make sure [" + sFile + "] is in the CLASSPATH");
			e.printStackTrace();
			return null;
		}
		
		String sVar = props.getProperty(sName, "알수 없는 propsName[" + sFile + "][" +sName+ "]");
		
		try {
			if(is != null)
				is.close();
		} catch (Exception e) {}
		
		return sVar;
	}
	
	public String get(String sName) {
		return get(prop_file, sName);
	}
	
	public static void main(String[] args) {
		String resource = "property/fileLocation.properties";
        Properties properties = new Properties();
        
        try {
            Reader reader = Resources.getResourceAsReader(resource);
            properties.load(reader);
            System.out.println(properties.getProperty("board.file.path"));
            System.out.println(properties.getProperty("appr.file.path"));
            System.out.println(properties.getProperty("schedule.file.path"));
            System.out.println(properties.getProperty("url"));
        } catch (IOException e) {
            e.printStackTrace();
        }
	}

}
