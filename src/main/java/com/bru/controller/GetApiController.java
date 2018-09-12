package com.bru.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bru.dao.ApiDao;
import com.bru.model.ContainerBean;



@RestController
public class GetApiController {
	@Autowired
	ApiDao apiDao;
	
	@RequestMapping(value="/number")
	public List<ContainerBean>  Checking() throws SQLException {
		    List<ContainerBean> list = new ArrayList<>();
				ContainerBean bean  = new ContainerBean();
	
		
		
	return list;
}
//end class	
}
