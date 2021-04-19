package com.spring.gym.about.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.gym.main.MainController;

public class AboutController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	
	@RequestMapping(value = "/about.do", method = RequestMethod.GET)
	   public ModelAndView about(HttpServletRequest request, HttpServletResponse response) throws Exception {
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("/about");
	      return mav;
	   }
	
	@RequestMapping(value = "/yoga.do", method = RequestMethod.GET)
	public ModelAndView yoga(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("yoga");
		return mav;
	}
	@RequestMapping(value = "/body.do", method = RequestMethod.GET)
	public ModelAndView body(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("body");
		return mav;
	}
	@RequestMapping(value = "/pilates.do", method = RequestMethod.GET)
	public ModelAndView pilates(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("pilates");
		return mav;
	}
	
	@RequestMapping(value = "/pt.do", method = RequestMethod.GET)
	public ModelAndView pt(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("pt");
		return mav;
	}
}
