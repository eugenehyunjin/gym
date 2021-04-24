package com.spring.gym.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.gym.board.vo.Criteria;

public interface AdminController {
	public ModelAndView selectAllMember(Criteria cri,HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView selectAllMaster(Criteria cri,HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView memberDel(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView masterDel(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception;
}
