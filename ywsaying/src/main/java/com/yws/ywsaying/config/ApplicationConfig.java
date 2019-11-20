package com.yws.ywsaying.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages= {"com.yws.ywsaying.dao","com.yws.ywsaying.service"})
public class ApplicationConfig {

}
