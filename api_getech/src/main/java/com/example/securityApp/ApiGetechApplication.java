package com.example.securityApp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"com.example.securityApp.entities"
	,"service","controller","com.example.securityApp.dao"})
public class ApiGetechApplication {

	public static void main(String[] args) {
		SpringApplication.run(ApiGetechApplication.class, args);
	}

}
