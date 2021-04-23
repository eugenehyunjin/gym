package com.spring.gym.mypage.dao;

import com.spring.gym.member.vo.MemberVO;
import com.sun.tools.javac.util.List;

public interface MyPageDAO {

	public MemberVO myInfoList(String id);

	public int modInfo(MemberVO member);

}
