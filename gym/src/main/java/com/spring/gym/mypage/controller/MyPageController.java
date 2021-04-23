package com.spring.gym.mypage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.spring.gym.member.vo.MemberVO;

public interface MyPageController {
	public ModelAndView memberInfo(HttpServletRequest request, HttpServletResponse response)throws Exception;
}
