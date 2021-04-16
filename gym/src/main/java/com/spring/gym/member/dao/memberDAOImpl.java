package com.spring.gym.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.gym.member.vo.memberVO;

@Repository("memberDAO")
public class memberDAOImpl implements memberDAO{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int checklogin(memberVO memberVO) {
		// TODO Auto-generated method stub
		int result = sqlSession.selectOne("mapper.member.checklogin", memberVO);
		return result;
	}

}
