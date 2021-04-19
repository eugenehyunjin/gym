package com.spring.gym.member.dao;

import com.spring.gym.member.vo.MemberVO;

public interface MemberDAO {

	public int checklogin(MemberVO memberVO);

	public int insertMember(MemberVO memberVO);



}
