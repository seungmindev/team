package com.yws.ywsaying.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@Configuration
@ComponentScan(basePackages= {"com.yws.ywsaying.dao","com.yws.ywsaying.service"})
@Import({DBConfig.class, EmailConfig.class})
public class ApplicationConfig {

}
