package com.spring.gym.course.controller;

import java.io.PrintWriter;

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
import org.springframework.web.servlet.ModelAndView;

import com.spring.gym.board.vo.BoardVO;
import com.spring.gym.course.service.CourseServiceImpl;
import com.spring.gym.course.vo.CourseVO;
import com.spring.gym.member.vo.MemberVO;

@Controller("courseController")
public class CourseControllerImpl {
	@Autowired
	CourseServiceImpl Srv;	
	
		@RequestMapping(value="/courseJoin.do", method= {RequestMethod.GET,RequestMethod.POST})
		public ResponseEntity courseJoin(@ModelAttribute("course") CourseVO vo, HttpServletRequest request, HttpServletResponse response)
				throws Exception {
			// TODO Auto-generated method stub
			int result =Srv.insertCourse(vo);
			System.out.println(result);
			ResponseEntity resEnt = null;
			String message;
			HttpHeaders responseheader = new HttpHeaders();
			if(result==0) {
				responseheader.add("Content-Type","text/html; charset=utf-8");
				message="<script>";
				message+="alert('등록에 실패하였습니다. 다시 시도해주세요.');";
				message+="location.href='"+request.getContextPath()+"/main.do';";
				message+="</script>";
				resEnt = new ResponseEntity(message, responseheader, HttpStatus.CREATED);
			}else if(result==1) {
				responseheader.add("Content-Type","text/html; charset=utf-8");
				message="<script>";
				message+="alert('커리큘럼등록이 완료되었습니다. 페이지 새로고침을 해주세요.');";
				message+="window.close();";
				message+="</script>";
				resEnt = new ResponseEntity(message, responseheader, HttpStatus.CREATED);
			}
			return resEnt;
		}
		
		@RequestMapping(value = "/delcourse.do", method = { RequestMethod.GET, RequestMethod.POST })
		public ModelAndView delcourse(@RequestParam("courseid") String id, HttpServletRequest request, HttpServletResponse response)
				throws Exception {
			Srv.delcourse(id);
			String message;
			PrintWriter out = response.getWriter();
			response.setContentType("text/html; charset=euc-kr");
			ModelAndView mav = new ModelAndView("");
				message = "<script>";
				message += "alert('클래스가 삭제되었습니다.');";
				message += "location.href='" + request.getContextPath() + "/myPage.do';";
				message += "</script>";
				out.println(message);
			return mav;
		}
		
		
}
