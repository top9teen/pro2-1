package com.bru.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;

import com.bru.dao.UserDao;
import com.bru.model.CustomerBean;
import com.bru.model.UserBean;

@Controller
public class logincontroller {
	
    @Autowired
	UserDao userDao;
    
    int stmember;
    
@RequestMapping(value="/")
public String test(Model model) {
	model.addAttribute("messessError", "");
	return "login";
}
//resgis customer
@RequestMapping(value ="/gotoreg2")
public String gotoreg2(String idcard ,String fristname , String lastname ,String address ,String telephone,Model model) {

	
	CustomerBean bean = new CustomerBean();
	
	bean.setCuAddress(address);
	bean.setCuFname(fristname);
	bean.setCuLastname(lastname);
	bean.setCuIdcard(idcard);
	bean.setCuTelephone(telephone);
	bean.setCuMember(stmember);
	
	
	
	try { 
		
		userDao.insert2(bean);
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}

	model.addAttribute("messessError", "L");
	return "gotoresigter";
}


@RequestMapping(value="/login")
public String test2 (String idcard, String password,HttpServletRequest request , Model model )throws SQLException{
	
	String page ="";
	
	UserBean bean = new UserBean();
	
	
	try {
		bean = userDao.xx(idcard,password) ;
		
	if (bean.getIdcard() != null) {
		
		if(bean.getStatus().equals("1")){	
			
			page = "adminindex";
		}
		else if(bean.getStatus().equals("2")){
			stmember = bean.getId();
			page = "index1";	
		}
		else if (bean.getStatus().equals("3")) {		
			stmember = bean.getId();
			page = "index2";
		
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
@RequestMapping(value="/logout")
public String logout(Model model) {
	model.addAttribute("messessError", "L");
	return "login";
}
// end class   
}

 