package com.spring.gym.master.service;

import java.util.List;

import com.spring.gym.course.vo.CourseVO;
import com.spring.gym.master.vo.MasterVO;
import com.spring.gym.member.vo.MemberVO;

public interface MasterService {

	public int idCheck(String userId);

	public int insertMaster(MasterVO masterVO);

	public int checklogin(MasterVO masterVO);

	public List<CourseVO> listCourse(String id);





}
