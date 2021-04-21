package com.spring.gym.admin.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.gym.board.vo.BoardVO;
import com.spring.gym.member.vo.MemberVO;

@Repository("adminDAO")
public class AdminDAOImpl implements AdminDAO{
	@Autowired
	private SqlSession sqlSession;

	public List<MemberVO> selectAllMember() {
		// TODO Auto-generated method stub
		List<MemberVO> memberList = sqlSession.selectList("mapper.member.selectAllMember");
		return memberList;
	}

	public int memberDel(String id) {
		// TODO Auto-generated method stub
		int result = sqlSession.delete("mapper.member.deleteMember", id);
		return result;
	}

	@Override
	public int listCount() throws Exception {
		// TODO Auto-generated method stub
		int result =  sqlSession.selectOne("mapper.member.listCount");
		System.out.println(result);
		return result;
	}


}
