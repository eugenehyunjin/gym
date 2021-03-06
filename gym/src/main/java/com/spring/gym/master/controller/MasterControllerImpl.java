package com.spring.gym.master.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.spring.gym.course.vo.CourseVO;
import com.spring.gym.master.service.MasterService;
import com.spring.gym.master.vo.MasterVO;



@Controller("masterController")
public class MasterControllerImpl implements MasterController{
	private static final String CURR_IMAGE_REPO_PATH = "C:\\Users\\\\java\\image";
	@Autowired
	MasterService masterSrv;
	
	@Override
	@RequestMapping(value = "/idCheck.do", method = RequestMethod.GET)
	public int masterIdChk(@RequestParam("id")String userId, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		int result = masterSrv.idCheck(userId);
		int data = 0;
		if(result == 1) {
			data = 1; 
		}else if(result == 0) {
			data = 0;
		}
	    return data;
	}
	
	@RequestMapping(value="/addMaster.do",method = RequestMethod.POST)
	public ModelAndView upload(@ModelAttribute MasterVO masterVO, MultipartHttpServletRequest multipartRequest,HttpServletResponse response)
	  throws Exception{
		multipartRequest.setCharacterEncoding("utf-8");
		System.out.println(masterVO.getId());
		int result = masterSrv.insertMaster(masterVO);
		
		Map map = new HashMap();
		Enumeration enu=multipartRequest.getParameterNames();
		while(enu.hasMoreElements()){
			String name=(String)enu.nextElement();
			String value=multipartRequest.getParameter(name);
			map.put(name,value);
		}
		
		List fileList= fileProcess(multipartRequest);
		map.put("fileList", fileList);
		ModelAndView mav = new ModelAndView();
		mav.addObject("map", map);
		mav.setViewName("redirect:/adminPage2.do");
		return mav;
	}
	
	private List<String> fileProcess(MultipartHttpServletRequest multipartRequest) throws Exception{
		List<String> fileList= new ArrayList<String>();
		Iterator<String> fileNames = multipartRequest.getFileNames();
		while(fileNames.hasNext()){
			String fileName = fileNames.next();
			MultipartFile mFile = multipartRequest.getFile(fileName);
			String originalFileName=mFile.getOriginalFilename();
			fileList.add(originalFileName);
			File file = new File(CURR_IMAGE_REPO_PATH +"\\"+ fileName);
			if(mFile.getSize()!=0){ //File Null Check
				if(! file.exists()){ //???????????? ????????? ???????????? ?????? ??????
					if(file.getParentFile().mkdirs()){ //????????? ???????????? ?????????????????? ??????
						file.createNewFile(); //?????? ?????? ??????
					}
				}
				mFile.transferTo(new File(CURR_IMAGE_REPO_PATH +"\\"+ originalFileName)); //????????? ????????? multipartFile??? ?????? ????????? ??????
			}
		}
		return fileList;
	}

	@ResponseBody
	@RequestMapping(value="/masterlogin.do", method=RequestMethod.GET)
	public ResponseEntity masterLogin(@ModelAttribute("masterVO") MasterVO masterVO,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		int result = masterSrv.checklogin(masterVO);
		System.out.println(result);
		ResponseEntity resEnt = null;
		String message;
		HttpHeaders responseheader = new HttpHeaders();
		if(result==0) {
			responseheader.add("Content-Type","text/html; charset=utf-8");
			message="<script>";
			message+="alert('???????????? ??????????????? ????????????. ?????? ????????? ?????????.');";
			message+="location.href='"+request.getContextPath()+"/main.do';";
			message+="</script>";
			resEnt = new ResponseEntity(message, responseheader, HttpStatus.CREATED);
		}else if(result==1) {
			responseheader.add("Content-Type","text/html; charset=utf-8");
			message="<script>";
			message+="alert('????????? ????????? ??????!');";
			message+="location.href='"+request.getContextPath()+"/main.do';";
			message+="</script>";
			HttpSession session = request.getSession();
			session.setAttribute("id", masterVO.getId());
			session.setAttribute("loginType", "master");
			resEnt = new ResponseEntity(message, responseheader, HttpStatus.CREATED);
		}
		return resEnt;
	}
	
	

}
