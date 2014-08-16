package com.ych.util;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
/**
 * spring 容器工具类
 * 
 * @author MEL
 * @date 2014-06-06
 */
public class SpringContextUtils implements ApplicationContextAware {

	private static ApplicationContext applicationContext; 
	@Override
	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		SpringContextUtils.applicationContext = applicationContext;
	}
	
	public static Object getBean(String name) throws BeansException{
		return applicationContext.getBean(name);
	}
}