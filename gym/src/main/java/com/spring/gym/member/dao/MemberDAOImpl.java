package com.spring.gym.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.gym.member.vo.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int checklogin(MemberVO memberVO) {
		// TODO Auto-generated method stub
		int result = sqlSession.selectOne("mapper.member.checklogin", memberVO);
		return result;
	}

	public int insertMember(MemberVO memberVO) {
		// TODO Auto-generated method stub
		int result = sqlSession.insert("mapper.member.insertMember", memberVO);
		return result;
	}

}
