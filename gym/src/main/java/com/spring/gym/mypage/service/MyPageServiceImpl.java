package com.spring.gym.mypage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

}
