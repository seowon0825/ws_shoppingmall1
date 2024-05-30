package com.example.security1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MyController {
	
	@RequestMapping("/")
	public String root() {
		log.info("root..........");
		return "index";
	}
	
}
