package com.bru.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bru.dao.ApiDao;
import com.bru.dao.RentDao;
import com.bru.dao.UserDao;
import com.bru.model.ContainerBean;
import com.bru.model.UserBean;

@Controller
public class CheckController {
	@Autowired
	UserDao userDao;
	@Autowired
	RentDao rentDao;
	@Autowired
	ApiDao apiDao;

@RequestMapping(value="/Check")
	public String Check(String idcard, Model model ,
			HttpServletRequest request) {
	model.addAttribute("messessError", "");
		
return "Check";
	}
@RequestMapping(value="/Checking")
public String Checking(String idcard, Model model ,
		HttpServletRequest request) {
	String page = "";
	UserBean ch = new UserBean();
	  List<ContainerBean> list = new ArrayList<>();
	try {

		ch = userDao.ch(idcard);
		list = apiDao.ch23();
		if(ch.getIdcard() != null) {
			request.getSession().setAttribute("1", ch);
			model.addAttribute("messessError", "L");
			page ="gotorent";
		}
		else {
			model.addAttribute("messessError", "F");
			page ="Check";
		}
		

	} catch (Exception e) {
		e.printStackTrace();
	}
	request.getSession().setAttribute("list", list);
return page;
}
//end class
}
