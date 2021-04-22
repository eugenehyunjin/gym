package com.spring.gym.master.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

}
