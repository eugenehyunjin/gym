package com.spring.gym.master.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.gym.course.vo.CourseVO;
import com.spring.gym.master.vo.MasterVO;


@Repository("masterDAO")
public class MasterDAOImpl implements MasterDAO{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int idCheck(String userId) {
		// TODO Auto-generated method stub
		int result = sqlSession.selectOne("mapper.member.checkid", userId); 
		return result;
	}

	@Override
	public int insertMaster(MasterVO masterVO) {
		// TODO Auto-generated method stub
		int result = sqlSession.insert("mapper.master.insertMaster", masterVO);
		return result;
	}

	public int checklogin(MasterVO masterVO) {
		// TODO Auto-generated method stub
		int result = sqlSession.selectOne("mapper.master.checklogin", masterVO);
		return result;
	}


	public List<CourseVO> listCourse(String id) {
		// TODO Auto-generated method stub
		List<CourseVO> list = sqlSession.selectList("mapper.course.listCourse", id);
		return list;
	}

}
