package com.spring.gym.mypage.service;

import com.spring.gym.member.vo.MemberVO;
import com.sun.tools.javac.util.List;

public interface MyPageService {

	public MemberVO myInfoList(String id);

	public int modInfo(MemberVO member);

}
