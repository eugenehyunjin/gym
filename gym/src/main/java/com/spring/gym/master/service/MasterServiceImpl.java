package com.spring.gym.master.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.gym.course.vo.CourseVO;
import com.spring.gym.master.dao.MasterDAO;
import com.spring.gym.master.vo.MasterVO;


@Service("masterService")
public class MasterServiceImpl implements MasterService{
	@Autowired
	MasterDAO dao;
	
	@Override
	public int idCheck(String userId) {
		// TODO Auto-generated method stub
		int result = dao.idCheck(userId);
		return result;
	}

	@Override
	public int insertMaster(MasterVO masterVO) {
		// TODO Auto-generated method stub
		int result = dao.insertMaster(masterVO);
		return result;
	}

	public int checklogin(MasterVO masterVO) {
		// TODO Auto-generated method stub
		int result = dao.checklogin(masterVO);
		return result;
	}

	@Override
	public List<CourseVO> listCourse(String id) {
		// TODO Auto-generated method stub
		List<CourseVO> list = dao.listCourse(id);
		return list;
	}

	public List<CourseVO> listAllCourse() {
		// TODO Auto-generated method stub
		List<CourseVO> list = dao.listAllCourse();
		return list;
	}

}
