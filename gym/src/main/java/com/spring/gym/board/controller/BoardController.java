package com.spring.gym.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface BoardController {

	public ModelAndView selectAllBoard(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
}
