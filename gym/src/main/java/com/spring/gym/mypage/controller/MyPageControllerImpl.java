package com.spring.gym.mypage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.spring.gym.main.MainController;
import com.spring.gym.member.vo.MemberVO;
import com.spring.gym.mypage.service.MyPageService;
import com.sun.tools.javac.util.List;

@Controller("mypageController")
public class MyPageControllerImpl implements MyPageController{
	@Autowired
	private MyPageService mpSrv;
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping(value = "/stuInfo_popup.do", method = RequestMethod.GET)
	public ModelAndView stuInfo_popup(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
	    return mav;
	}
	
	@Override
	@RequestMapping(value = "/myPage.do", method = RequestMethod.GET)
	public ModelAndView memberInfo(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		String viewName = (String) request.getAttribute("viewName");
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		MemberVO myInfo = mpSrv.myInfoList(id);
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("myInfo", myInfo);
	    return mav;
	}
	
	@RequestMapping(value = "/addCourse_popup.do", method = RequestMethod.GET)
	public ModelAndView addCourse_popup(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
	    return mav;
	}
	
	@RequestMapping(value = "/modSave.do", method = RequestMethod.POST)
	public ModelAndView modSave(@ModelAttribute("myInfo") MemberVO member, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("text/html;charset=utf-8");
		int result = mpSrv.modInfo(member);
		HttpSession session = request.getSession();
		Object id = session.getAttribute("id");
		ModelAndView mav = new ModelAndView("redirect:/myPage.do");
		return mav;
	}
}