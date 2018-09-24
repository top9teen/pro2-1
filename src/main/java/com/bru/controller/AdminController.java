package com.bru.controller;



import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bru.dao.AdminDao;
import com.bru.dao.RentDao;
import com.bru.model.CustomerBean;
import com.bru.model.DetailrentBean;
import com.bru.model.UserBean;

@Controller
public class AdminController {

	@Autowired
	AdminDao  adminDao;
	
	@Autowired
	RentDao rentDao;
	
	@RequestMapping("/admin1")
	public String admin1(Model model) {
		 model.addAttribute("messessError", "");
		return "admin1";
	}	
	@RequestMapping("/admin1ed")
	public String admin1ed(Model model, String idcard ,String password,String gender ,String fristname ,String lastname ,String address ,String telephone ,String status) throws SQLException {
		UserBean bean = new UserBean();
		
		
		bean.setIdcard(idcard);
		bean = adminDao.bbxx(idcard);
		if(bean.getIdcard() == null) {
			bean.setAddress(address);
			bean.setFristname(fristname);
			bean.setGender(gender);
			bean.setIdcard(idcard);
			bean.setLastname(lastname);
			bean.setPassword(password);
			bean.setStatus(status);
			bean.setTelephone(telephone);
			adminDao.vvvv(bean);
			model.addAttribute("messessError", "L");
		}
		else {
			model.addAttribute("messessError", "F");
		}
		
		 
		 
		return "admin1";
	}	
	
	@RequestMapping("/reported")
	public String reported(HttpServletRequest res) throws SQLException {
		List<DetailrentBean> list = new ArrayList<>();
		list = rentDao.Trens();
		res.getSession().setAttribute("list", list);
		return "admin2";
	}
	@RequestMapping("/gotorerentger2")
	public String gotorerentger(int stIdcard,HttpServletRequest res) throws SQLException {
		DetailrentBean bean = new DetailrentBean();
		bean = rentDao.xx(stIdcard);
		res.getSession().setAttribute("bean", bean);
		return "adminreportce";
	}
	@RequestMapping("/remember")
	public String remember(HttpServletRequest res) throws SQLException {
		 List<UserBean> listuser = new ArrayList<>();
		 List<CustomerBean> listcus = new ArrayList<>();
		 listuser = adminDao.listuse();
		 listcus = adminDao.listcus();
			res.getSession().setAttribute("listuser", listuser);
			res.getSession().setAttribute("listcus", listcus);
		return "admin3";
	}	
	// end class    remember
}
