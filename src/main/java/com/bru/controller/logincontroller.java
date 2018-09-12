package com.bru.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;

import com.bru.dao.UserDao;
import com.bru.model.UserBean;

@Controller
public class logincontroller {
	
    @Autowired
	UserDao userDao;
    
@RequestMapping(value="/")
public String test(Model model) {
	model.addAttribute("messessError", "");
	return "login";
}
@RequestMapping(value="/login")
public String test2 (String idcard, String password,HttpServletRequest request , Model model )throws SQLException{
	
	String page ="";
	
	UserBean bean = new UserBean();
	
	
	try {
		bean = userDao.xx(idcard,password) ;
		
	if (bean.getIdcard() != null) {
		
		if(bean.getStatus().equals("1")){	
			
			page = "login";
		}
		else if(bean.getStatus().equals("2")){
		
			page = "index1";	
		}
		else if (bean.getStatus() == null) {		

			page = "login";
		
			//,HttpServletRequest request , Model model
		}
	}
	else {
		model.addAttribute("messessError", "F");
		page = "login";
	
	}
	}catch (Exception e) {
		e.printStackTrace();
	
	}return page ;
}


}

 