package com.bru.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bru.dao.RentDao;
import com.bru.model.RentBean;
@Controller
public class Rentcontroller {
	@Autowired
	RentDao rentDao;
	@RequestMapping(value="/rent")
	public String tests() {
		return "rent";
}
	@RequestMapping(value="/rent22")
public String tes(int CB001, int CC001, int CC002 , int CD001 , String idcard ) {
		RentBean bean = new RentBean();
		bean.setCB001(CB001);
		bean.setCC001(CC001);
		bean.setCC002(CC002);
		bean.setCD001(CD001);
		bean.setIdcard(idcard);
		try {
			rentDao.insert(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "index1";
		
		
	}
}