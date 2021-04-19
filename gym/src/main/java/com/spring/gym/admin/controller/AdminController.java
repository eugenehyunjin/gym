package com.spring.gym.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.gym.main.MainController;

public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping(value = "/masterForm.do", method = RequestMethod.GET)
	   public ModelAndView masterForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("masterForm");
	      return mav;
	   }
}
