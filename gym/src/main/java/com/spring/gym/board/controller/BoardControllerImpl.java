package com.spring.gym.board.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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
	@RequestMapping(value = "/blog.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView selectAllBoard(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		List boardList = boardService.selectAllBoard();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("boardList", boardList);
		return mav;
	}
	
	@RequestMapping(value = "/addBoard.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView addBoard(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}

	@Override
	@RequestMapping(value = "/insertBoard.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView insertBoard(BoardVO vo, HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		int result = boardService.insertBoard(vo);
		String message;
		System.out.println("===========   " + result);
		PrintWriter out = response.getWriter();
		response.setContentType("text/html; charset=euc-kr");
		ModelAndView mav = new ModelAndView("");
				
		if (result == 0) {
			message = "<script>";
			message += "alert('공지사항 등록 실패!');";
			message += "location.href='" + request.getContextPath() + "/addBoard.do';";
			message += "</script>";
			out.println(message);
			return null;
	
		} else if (result == 1) {
			
			message = "<script>";
			message += "alert('공지사항 등록 되었습니다.');";
			message += "location.href='" + request.getContextPath() + "/blog.do';";
			message += "</script>";
			out.println(message);
			return null;
		}
		return mav;
	}
}
