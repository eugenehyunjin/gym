package com.spring.gym.course.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.gym.course.dao.CourseDAO;
import com.spring.gym.course.vo.CourseVO;

@Service("courseService")
public class CourseServiceImpl {
	@Autowired
	CourseDAO dao;

	public int insertCourse(CourseVO vo) {
		// TODO Auto-generated method stub
		int result = dao.insertCourse(vo);
		return result;
	}

	public void delcourse(String id) {
		// TODO Auto-generated method stub
		dao.delcourse(id);
		
	}

}
