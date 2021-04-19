package com.spring.gym.board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.gym.board.service.BoardService;
import com.spring.gym.board.vo.BoardVO;

@Controller("boardController")
public class BoardControllerImpl implements BoardController {
	@Autowired
	private BoardService boardService;
	@Autowired
	private BoardVO boardVO;
		
	@Override
	@RequestMapping(value= "/blog.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView selectAllBoard(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
	System.out.println("============  "+viewName);
		List boardList = boardService.selectAllBoard();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("boardList", boardList);
		System.out.println("%%%%%%  "+ boardList.get(0).toString());
		System.out.println("%%%%%%  "+ boardList.get(1).toString());
		System.out.println("%%%%%%  "+ boardList.get(2).toString());
		System.out.println("%%%%%%  "+ boardList.get(3).toString());
	
		
		
		return mav;
		
	}
}
