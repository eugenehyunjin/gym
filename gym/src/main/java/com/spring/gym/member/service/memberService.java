package com.spring.gym.member.service;

import com.spring.gym.member.vo.memberVO;

public interface memberService {

	public int checklogin(memberVO memberVO);

	public int insertMember(memberVO memberVO);



}
