package com.spring.gym.admin.dao;

import java.util.List;

import com.spring.gym.board.vo.Criteria;
import com.spring.gym.member.vo.MemberVO;

public interface AdminDAO {
	public List<MemberVO> selectAllMember();
	public int memberDel(String id);
	public int listCount()throws Exception;
	public List<MemberVO> list(Criteria cri);
	public List<MemberVO> listMaster(Criteria cri);
	public int masterDel(String id);

}
