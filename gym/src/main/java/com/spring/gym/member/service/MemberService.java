package com.spring.gym.member.service;

import com.spring.gym.member.vo.MemberVO;

public interface MemberService {

	public int checklogin(MemberVO memberVO);

	public int insertMember(MemberVO memberVO);



}
