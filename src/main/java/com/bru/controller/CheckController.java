package com.bru.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bru.dao.RentDao;
import com.bru.dao.UserDao;
import com.bru.model.UserBean;

@Controller
public class CheckController {
	@Autowired
	UserDao userDao;
	RentDao rentDao;

	@RequestMapping(value="/Check")
	public String Checkk(Model model) {
		model.addAttribute("messessError", "");
		return "Check";
	}
@RequestMapping(value="/Checking")
	public String Checking(String idcard, Model model ,
			HttpServletRequest request) {
		UserBean ch = new UserBean();
//		ch.setIdcard(idcard);
//		ch.setStatus(status);
		try {
			ch = userDao.ch(idcard);
			request.getSession().setAttribute("1", ch);
	
		} catch (Exception e) {
			e.printStackTrace();
		}
		
return "rent";
	}

}
