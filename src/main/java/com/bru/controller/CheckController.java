package com.bru.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bru.dao.UserDao;

public class CheckController {
	@Autowired
	UserDao Check ;
	@RequestMapping(value="/Check")
public String check(Model model)	 {
	model.addAttribute("messessError");
	return "Check";
}

}
