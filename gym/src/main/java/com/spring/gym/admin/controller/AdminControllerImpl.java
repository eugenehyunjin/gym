package com.spring.gym.admin.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.gym.admin.service.AdminService;
import com.spring.gym.board.vo.Criteria;
import com.spring.gym.board.vo.PageMaker;
import com.spring.gym.main.MainController;

@Controller("adminController")
public class AdminControllerImpl implements AdminController{
	
	@Autowired
	AdminService adminSV;
	
	@RequestMapping(value = "/masterForm.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView masterForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}

	@Override
	@RequestMapping(value = "/adminPage1.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView selectAllMember(Criteria cri, HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		String viewName = (String) request.getAttribute("viewName");
		System.out.println(viewName);
		List memberList = adminSV.selectAllMember();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("memberList", adminSV.list(cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(adminSV.listCount());
		mav.addObject("pageMaker",pageMaker);
		return mav;
	}

	@Override
	@RequestMapping(value = "/memberDel.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView memberDel(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		int result = adminSV.memberDel(id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/adminPage1.do");
		return mav;
	}
	private static final String CURR_IMAGE_REPO_PATH = "C:\\Users\\\\java\\image";

	@RequestMapping("/download")
	public void download(@RequestParam("imageFileName") String imageFileName,
			                 HttpServletResponse response)throws Exception {
		OutputStream out = response.getOutputStream();
		String downFile = CURR_IMAGE_REPO_PATH + "\\" + imageFileName;
		File file = new File(downFile);

		response.setHeader("Cache-Control", "no-cache");
		response.addHeader("Content-disposition", "attachment; fileName=" + imageFileName);
		FileInputStream in = new FileInputStream(file);
		byte[] buffer = new byte[1024 * 8];
		while (true) {
			int count = in.read(buffer); // 버퍼에 읽어들인 문자개수
			if (count == -1) // 버퍼의 마지막에 도달했는지 체크
				break;
			out.write(buffer, 0, count);
		}
		in.close();
		out.close();
	}

	@Override
	@RequestMapping(value = "/adminPage2.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView selectAllMaster(Criteria cri, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		String viewName = (String) request.getAttribute("viewName");
		System.out.println(viewName);
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("masterList", adminSV.listMaster(cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(adminSV.listCount());
		mav.addObject("pageMaker",pageMaker);
		return mav;
	}

	@Override
	@RequestMapping(value = "/masterDel.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView masterDel(String id, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		int result = adminSV.masterDel(id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/adminPage2.do");
		return mav;
	}
	
	
}
