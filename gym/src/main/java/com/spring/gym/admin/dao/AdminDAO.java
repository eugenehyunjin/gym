package com.spring.gym.admin.dao;

import java.util.List;

import com.spring.gym.member.vo.MemberVO;

public interface AdminDAO {
	public List<MemberVO> selectAllMember();
	public int memberDel(String id);
	public int listCount()throws Exception;

}
