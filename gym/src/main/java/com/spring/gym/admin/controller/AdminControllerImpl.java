package com.spring.gym.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.gym.admin.service.AdminService;
import com.spring.gym.board.vo.Criteria;
import com.spring.gym.board.vo.PageMaker;
import com.spring.gym.main.MainController;

@Controller("adminController")
public class AdminControllerImpl implements AdminController{
	
	@Autowired
	AdminService adminSV;
	
	@RequestMapping(value = "/masterForm.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView masterForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}

	@Override
	@RequestMapping(value = "/adminPage1.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView selectAllMember(Criteria cri, HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		String viewName = (String) request.getAttribute("viewName");
		System.out.println(viewName);
		List memberList = adminSV.selectAllMember();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("memberList", adminSV.list(cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(adminSV.listCount());
		mav.addObject("pageMaker",pageMaker);
		return mav;
	}

	@Override
	@RequestMapping(value = "/memberDel.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView memberDel(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		int result = adminSV.memberDel(id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/adminPage1.do");
		return mav;
	}
	
	
}
