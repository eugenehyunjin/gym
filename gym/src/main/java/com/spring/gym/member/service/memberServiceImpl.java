package com.spring.gym.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.gym.member.dao.memberDAO;
import com.spring.gym.member.vo.memberVO;

@Service("memberService")
public class memberServiceImpl implements memberService{
	@Autowired
	private memberDAO memDAO;
	
	public int checklogin(memberVO memberVO) {
		// TODO Auto-generated method stub
		int result = memDAO.checklogin(memberVO);
		return result;
	}

	public int insertMember(memberVO memberVO) {
		// TODO Auto-generated method stub
		int result = memDAO.insertMember(memberVO);
		return result;
	}

}
