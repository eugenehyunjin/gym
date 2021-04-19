package com.spring.gym.main;


import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public ModelAndView main(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main");
		return mav;
	}
	
	@RequestMapping(value = "/contact.do", method = RequestMethod.GET)
	public String contact(Locale locale, Model model) {
		return "contact";
	}
	
	@RequestMapping(value = "/blog.do", method = RequestMethod.GET)
	public ModelAndView blog(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("blog");
		return mav;
	}
	
	@RequestMapping(value = "/team.do", method = RequestMethod.GET)
	public ModelAndView team(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/team");
		return mav;
	}
	
	@RequestMapping(value = "/myPage.do", method = RequestMethod.GET)
	public ModelAndView myPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("myPage");
		return mav;
	}
	
	@RequestMapping(value = "/addBoard", method = RequestMethod.GET)
	public ModelAndView addBoard(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("addBoard");
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
	@RequestMapping(value = "/class.do", method = RequestMethod.GET)
	   public ModelAndView classes(HttpServletRequest request, HttpServletResponse response) throws Exception {
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("class");
	      return mav;
	   }
	
	@RequestMapping(value = "/about.do", method = RequestMethod.GET)
	   public ModelAndView about(HttpServletRequest request, HttpServletResponse response) throws Exception {
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("/about");
	      return mav;
	   }
	
	@RequestMapping(value = "/masterForm.do", method = RequestMethod.GET)
	   public ModelAndView masterForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("masterForm");
	      return mav;
	   }
	
}
