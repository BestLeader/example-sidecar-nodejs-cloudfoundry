package com.sidecarapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.sidecar.EnableSidecar;

@EnableSidecar
@SpringBootApplication
public class SampleSidecarApplication {

	public static void main(String[] args) {
		SpringApplication.run(SampleSidecarApplication.class, args);
	}
}
