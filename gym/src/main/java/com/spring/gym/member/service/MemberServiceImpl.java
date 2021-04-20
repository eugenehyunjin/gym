package com.spring.gym.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.gym.board.vo.BoardVO;
import com.spring.gym.member.dao.MemberDAO;
import com.spring.gym.member.vo.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDAO memDAO;
	
	public int checklogin(MemberVO memberVO) {
		// TODO Auto-generated method stub
		int result = memDAO.checklogin(memberVO);
		return result;
	}

	public int insertMember(MemberVO memberVO) {
		// TODO Auto-generated method stub
		int result = memDAO.insertMember(memberVO);
		return result;
	}

	@Override
	public List<MemberVO> selectAllMember() {
		// TODO Auto-generated method stub
		List<MemberVO> memberList = memDAO.selectAllMember();
		return memberList;
	}

	public int memberDel(String id) {
		// TODO Auto-generated method stub
		int result = memDAO.memberDel(id);
		return result;
	}


}
