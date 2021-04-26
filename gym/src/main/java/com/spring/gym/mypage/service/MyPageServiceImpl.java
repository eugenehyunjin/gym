package com.spring.gym.mypage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.gym.master.vo.MasterVO;
import com.spring.gym.member.vo.MemberVO;
import com.spring.gym.mypage.dao.MyPageDAO;
import com.sun.tools.javac.util.List;

@Service("myPageService")
public class MyPageServiceImpl implements MyPageService{
	@Autowired
	MyPageDAO dao;
	
	@Override
	public MemberVO myInfoList(String id) {
		// TODO Auto-generated method stub
		return dao.myInfoList(id);
	}

	@Override
	public int modInfo(MemberVO member) {
		// TODO Auto-generated method stub
		return dao.modInfo(member);
	}

	@Override
	public MasterVO masterInfoList(String id) {
		// TODO Auto-generated method stub
		return dao.masterInfoList(id);
	}

}
