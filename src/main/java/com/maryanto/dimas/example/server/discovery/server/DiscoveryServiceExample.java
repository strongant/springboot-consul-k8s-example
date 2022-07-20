package com.maryanto.dimas.example.server.discovery.server;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;

@EnableDiscoveryClient
@SpringBootApplication
@EnableFeignClients
public class DiscoveryServiceExample {

	public static void main(String[] args) {
		SpringApplication.run(DiscoveryServiceExample.class, args);
	}

}
