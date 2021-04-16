package com.spring.gym.member.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.gym.member.service.memberService;
import com.spring.gym.member.vo.memberVO;

@Controller("memberController")
public class memberControllerImpl implements memberController {
	@Autowired
	private memberService memSV;
	
	@Override
	@ResponseBody
	@RequestMapping(value="/checklogin.do", method=RequestMethod.GET)
	public ResponseEntity checklogin(@ModelAttribute("memberVO") memberVO memberVO,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		System.out.println(memberVO.getId());
		System.out.println(memberVO.getPwd());
		int result = memSV.checklogin(memberVO);
		System.out.println(result);
		ResponseEntity resEnt = null;
		String message;
		HttpHeaders responseheader = new HttpHeaders();
		if(result==0) {
			responseheader.add("Content-Type","text/html; charset=utf-8");
			message="<script>";
			message+="alert('아이디와 비밀번호가 틀립니다. 다시 시도해 주세요.');";
			message+="location.href='"+request.getContextPath()+"/main.do';";
			message+="</script>";
			resEnt = new ResponseEntity(message, responseheader, HttpStatus.CREATED);
		}else if(result==1) {
			responseheader.add("Content-Type","text/html; charset=utf-8");
			message="<script>";
			message+="alert('로그인 성공.');";
			message+="location.href='"+request.getContextPath()+"/main.do';";
			message+="</script>";
			HttpSession session = request.getSession();
			session.setAttribute("id", memberVO.getId());
			resEnt = new ResponseEntity(message, responseheader, HttpStatus.CREATED);
		}
		return resEnt;
	}

	@RequestMapping(value="/logout.do",method=RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		session.removeAttribute("id");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/main.do");
		return mav;
	}

	@Override
	@RequestMapping(value="/memberForm.do",method=RequestMethod.GET)
	public ModelAndView memberForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ModelAndView mav = new ModelAndView();
		mav.setViewName("memberForm");
		return mav;
	}

	@Override
	@RequestMapping(value="join.do", method= {RequestMethod.GET, RequestMethod.POST})
	public ResponseEntity join(memberVO memberVO, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	

	


}
