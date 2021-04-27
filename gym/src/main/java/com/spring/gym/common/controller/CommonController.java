package com.spring.gym.common.controller;

import java.io.PrintWriter;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.gym.course.vo.CourseVO;
import com.spring.gym.main.MainController;
import com.spring.gym.master.service.MasterServiceImpl;

@Controller("commonController")
public class CommonController {
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	@Autowired
	private MasterServiceImpl masterSrv;
	
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public ModelAndView main(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
	    return mav;
	}
	
	@RequestMapping(value = "/contact.do", method = RequestMethod.GET)
	public ModelAndView contact(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
	    return mav;
	}
	
	@RequestMapping(value = "/team.do", method = RequestMethod.GET)
	public ModelAndView team(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
	    return mav;
	}
	
	@RequestMapping(value = "/class.do", method = RequestMethod.GET)
	   public ModelAndView classes(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		List<CourseVO> courselist = masterSrv.listAllCourse();
		HttpSession session = request.getSession();
		session.setAttribute("courselist",courselist);
		ModelAndView mav = new ModelAndView(viewName);
	    return mav;
	   }
	
	@RequestMapping(value = "/needLogin.do", method = { RequestMethod.GET, RequestMethod.POST })
	public void needLogin(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String message;
		PrintWriter out = response.getWriter();
		response.setContentType("text/html; charset=euc-kr");
		ModelAndView mav = new ModelAndView("");
			message = "<script>";
			message += "alert('로그인이 필요합니다.');";
			message += "location.href='" + request.getContextPath() + "/main.do';";
			message += "</script>";
			out.println(message);
	}
}
