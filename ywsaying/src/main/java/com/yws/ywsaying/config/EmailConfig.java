package com.yws.ywsaying.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class EmailConfig {

	@Bean
	public void javaMailSender() {
		String host = "smtp.gamil.com";
		
	}
	
}
