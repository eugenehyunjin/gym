package com.spring.gym.mypage.controller;

import java.io.PrintWriter;
import java.util.List;

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

import com.spring.gym.book.service.BookService;
import com.spring.gym.book.vo.BookVO;
import com.spring.gym.course.vo.CourseVO;
import com.spring.gym.main.MainController;
import com.spring.gym.master.service.MasterServiceImpl;
import com.spring.gym.master.vo.MasterVO;
import com.spring.gym.member.vo.MemberVO;
import com.spring.gym.mypage.service.MyPageService;


@Controller("mypageController")
public class MyPageControllerImpl implements MyPageController{
	@Autowired
	private MyPageService mpSrv;
	@Autowired
	private MasterServiceImpl masterSrv;
	@Autowired
	private BookService bookSrv;
	
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
		ModelAndView mav = new ModelAndView();
			if(id==null) {
				String message;
				PrintWriter out = response.getWriter();
				response.setContentType("text/html; charset=euc-kr");
				message = "<script>";
				message += "alert('로그인을 다시 해주세요.');";
				message += "location.href='" + request.getContextPath() + "/main.do';";
				message += "</script>";
				out.println(message);
			}else {
				Object loginType = session.getAttribute("loginType");
				System.out.println(loginType);
				if(loginType == "master") {
					MasterVO myInfo = mpSrv.masterInfoList(id);
					List<CourseVO> courselist = masterSrv.listCourse(id);
					mav = new ModelAndView(viewName);
					session.setAttribute("myInfo", myInfo);
					session.setAttribute("courselist", courselist);
					return mav;
				}else {
					MemberVO myInfo = mpSrv.myInfoList(id);
					List<BookVO> booklist = bookSrv.listbook(id);
					mav = new ModelAndView(viewName);
					session.setAttribute("myInfo", myInfo);
					session.setAttribute("booklist", booklist);
					return mav;
				}
			}
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
		request.setCharacterEncoding("utf-8");
		int result = mpSrv.modInfo(member);
		HttpSession session = request.getSession();
		Object id = session.getAttribute("id");
		ModelAndView mav = new ModelAndView("redirect:/myPage.do");
		return mav;
	}
}