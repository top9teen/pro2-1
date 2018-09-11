package com.bru.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Welcomecontroller {

	
	@RequestMapping("/index1")
	public String heli() {
		return "index1";
	}
  
	
		
	
	
	@RequestMapping("/withdrawal")
	public String helw() {

		return "withdrawal";
	}
	
	@RequestMapping("/member")
	public String helm() {

		return "member";
	}
	
	@RequestMapping("/admin")
	public String hela() {

		return "admin";
	}
	
	@RequestMapping("/report")
	public String helre() {

		return "report";
	}
	
	@RequestMapping("/container")
	public String helc() {

		return "container";
	}
	

	
	// end class
}
