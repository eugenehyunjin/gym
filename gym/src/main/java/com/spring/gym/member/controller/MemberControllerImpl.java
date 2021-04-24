package com.spring.gym.member.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.gym.member.service.MemberService;
import com.spring.gym.member.vo.MemberVO;

@Controller("memberController")
public class MemberControllerImpl implements MemberController {
	@Autowired
	private MemberService memSV;
	
	@Override
	@ResponseBody
	@RequestMapping(value="/checklogin.do", method=RequestMethod.GET)
	public ResponseEntity checklogin(@ModelAttribute("memberVO") MemberVO memberVO,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
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
			message+="alert('로그인 성공!');";
			message+="location.href='"+request.getContextPath()+"/main.do';";
			message+="</script>";
			HttpSession session = request.getSession();
			session.setAttribute("id", memberVO.getId());
			session.setAttribute("loginType", "normal");
			resEnt = new ResponseEntity(message, responseheader, HttpStatus.CREATED);
		}
		return resEnt;
	}

	@RequestMapping(value="/logout.do",method=RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		session.removeAttribute("id");
		session.removeAttribute("loginType");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/main.do");
		return mav;
	}


	@RequestMapping(value="/memberForm.do",method=RequestMethod.GET)
	public ModelAndView memberForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
	    return mav;
	}

	@Override
	@RequestMapping(value="/join.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ResponseEntity join(@ModelAttribute("memberVO") MemberVO memberVO, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		int result = memSV.insertMember(memberVO);
		System.out.println(result);
		ResponseEntity resEnt = null;
		String message;
		HttpHeaders responseheader = new HttpHeaders();
		if(result==0) {
			responseheader.add("Content-Type","text/html; charset=utf-8");
			message="<script>";
			message+="alert('회원가입에 실패하였습니다. 다시 시도해주세요.');";
			message+="location.href='"+request.getContextPath()+"/memberForm.do';";
			message+="</script>";
			resEnt = new ResponseEntity(message, responseheader, HttpStatus.CREATED);
		}else if(result==1) {
			responseheader.add("Content-Type","text/html; charset=utf-8");
			message="<script>";
			message+="alert('회원가입 되었습니다! 로그인을 해주세요.');";
			message+="location.href='"+request.getContextPath()+"/main.do';";
			message+="</script>";
			resEnt = new ResponseEntity(message, responseheader, HttpStatus.CREATED);
		}
		return resEnt;
	}

	
	


}
