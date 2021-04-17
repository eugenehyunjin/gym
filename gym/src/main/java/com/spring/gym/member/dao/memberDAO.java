package com.spring.gym.member.dao;

import com.spring.gym.member.vo.memberVO;

public interface memberDAO {

	public int checklogin(memberVO memberVO);

	public int insertMember(memberVO memberVO);



}
