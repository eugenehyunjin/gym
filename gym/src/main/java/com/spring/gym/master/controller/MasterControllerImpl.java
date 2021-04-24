package com.spring.gym.master.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.gym.master.service.MasterService;

@Controller("masterController")
public class MasterControllerImpl implements MasterController{
	@Autowired
	MasterService masterSrv;
	
	@Override
	@RequestMapping(value = "/idCheck.do", method = RequestMethod.GET)
	public int masterIdChk(@RequestParam("id")String userId, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		int result = masterSrv.idCheck(userId);
		int data = 0;
		if(result == 1) {
			data = 1; 
		}else if(result == 0) {
			data = 0;
		}
	    return data;
	}

	
}
