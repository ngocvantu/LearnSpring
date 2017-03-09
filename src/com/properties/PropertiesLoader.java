package com.properties;

import java.io.IOException;
import java.util.Properties;

public class PropertiesLoader {
	static Properties properties;
	static {
		try {
			@SuppressWarnings("unchecked")
			Class<PropertiesLoader> cls = (Class<PropertiesLoader>) Class.forName("com.properties.PropertiesLoader");
			properties = new Properties();
			properties.load(cls.getResourceAsStream("/app.properties")); 
			
		} catch (ClassNotFoundException | IOException e) { 
			System.out.println("can not load resource");
			e.printStackTrace();
		}
	}
	
	public static String getProperty(String key){
		return properties.getProperty(key);
	} 
	
	
}
