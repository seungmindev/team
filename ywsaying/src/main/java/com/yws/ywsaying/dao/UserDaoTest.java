package com.yws.ywsaying.dao;

import java.util.Date;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.yws.ywsaying.config.ApplicationConfig;
import com.yws.ywsaying.dto.Log;
import com.yws.ywsaying.dto.User;

public class UserDaoTest {

	public static void main(String[] args) {
		ApplicationContext ac = new AnnotationConfigApplicationContext(ApplicationConfig.class);
//		UserDao userDao = ac.getBean(UserDao.class);
		
//		User user = new User();
//		user.setUser_id("test2");
//		user.setUser_password("test2");
//		user.setUser_email("test2@test");
//		user.setUser_name("test2");
//		user.setUser_bir_yy(1999);
//		user.setUser_bir_mm(1);
//		user.setUser_bir_dd(1);
//		user.setUser_gender("y");
//		user.setUser_nickname("test2");
//		user.setUser_regtime(new Date());
//		Long idx = userDao.insert(user);
//		System.out.println("idx: "+idx);
		
		LogDao logDao = ac.getBean(LogDao.class);
		Log log = new Log();
		log.setLog_ip("127.0.0.1");
		log.setLog_method("insert");
		log.setLog_regtime(new Date());
		Long re = logDao.insert(log);
		System.out.println("re :"+re);
		
	}

}
