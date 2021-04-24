package com.spring.gym.master.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.gym.master.vo.MasterVO;
import com.spring.gym.member.vo.MemberVO;

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

}
