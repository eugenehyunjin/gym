package com.spring.gym.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.spring.gym.member.vo.memberVO;

public interface memberController {
	public ModelAndView memberForm(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ResponseEntity checklogin(@ModelAttribute("memberVO") memberVO memberVO, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ResponseEntity join(@ModelAttribute("memberVO") memberVO memberVO, HttpServletRequest request, HttpServletResponse response) throws Exception;
}
