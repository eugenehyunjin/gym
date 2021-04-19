package com.spring.gym.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.spring.gym.board.vo.BoardVO;

public interface BoardController {

	public ModelAndView selectAllBoard(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView insertBoard(@ModelAttribute("board") BoardVO vo,HttpServletRequest request, HttpServletResponse response) throws Exception;
	
}