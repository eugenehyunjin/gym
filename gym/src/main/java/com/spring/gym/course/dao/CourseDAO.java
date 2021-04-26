package com.spring.gym.course.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.gym.course.vo.CourseVO;

@Repository("courseDAO")
public class CourseDAO {
	@Autowired
	private SqlSession sqlSession;
	
	public int insertCourse(CourseVO vo) {
		// TODO Auto-generated method stub
		int result = sqlSession.insert("mapper.course.insertCourse", vo);
		return result;
	}

	public void delcourse(String id) {
		// TODO Auto-generated method stub
		sqlSession.delete("mapper.course.delCourse", id);
	}

}
