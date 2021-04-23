package com.spring.gym.mypage.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.gym.member.vo.MemberVO;
import com.sun.tools.javac.util.List;

@Repository("myPageDAO")
public class MyPageDAOImpl implements MyPageDAO{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public MemberVO myInfoList(String id) {
		// TODO Auto-generated method stub
		MemberVO memvo = sqlSession.selectOne("mapper.member.myInfoVO", id);
		return memvo;
	}

	@Override
	public int modInfo(MemberVO member) {
		// TODO Auto-generated method stub
		int result = sqlSession.update("mapper.member.modInfo", member);
		return 0;
	}

}
