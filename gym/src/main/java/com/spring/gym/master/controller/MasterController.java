package com.spring.gym.master.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

public interface MasterController {
	public int masterIdChk(@RequestParam("id") String userId, HttpServletRequest request, HttpServletResponse response)throws Exception;
}
