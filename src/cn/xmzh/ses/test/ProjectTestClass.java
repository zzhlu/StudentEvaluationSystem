package cn.xmzh.ses.test;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ProjectTestClass {
	private ApplicationContext config;

	@Before
	public void loadContext() {
		config = new ClassPathXmlApplicationContext(
				"classpath:applicationContext.xml");
	}

	@Test
	public void testClass() {
		System.out.println(config);
		System.out.println(config.getBean("termService"));
	}
}
