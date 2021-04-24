package com.spring.gym.master.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.gym.master.vo.MasterVO;

public interface MasterController {
	public ResponseEntity masterLogin(@ModelAttribute("masterVO") MasterVO masterVO, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public int masterIdChk(@RequestParam("id") String userId, HttpServletRequest request, HttpServletResponse response)throws Exception;
}
