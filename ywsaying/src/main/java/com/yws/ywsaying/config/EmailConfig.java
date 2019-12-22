package com.yws.ywsaying.config;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSenderImpl;

@Configuration
public class EmailConfig {

	@Bean
	public JavaMailSenderImpl javaMailSender () {
		
		JavaMailSenderImpl mail = new JavaMailSenderImpl();		

		mail.setHost("smtp.gmail.com");
		mail.setPort(587);
		mail.setUsername("");
		mail.setPassword("");
		
		
		Properties pro = new Properties();
		String resource = "resources/mail.properties";
		try {
			pro.load(new FileInputStream("C:\\Users\\user\\git\\team\\ywsaying\\src\\main\\resources\\mail.properties"));	
			mail.setJavaMailProperties(pro);
		}catch(IOException e) {
			System.out.println("파일 불러오기오류 "+ e);
		}	
		
		return mail;
	}
	

	
}
