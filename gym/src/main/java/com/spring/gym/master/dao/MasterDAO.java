package com.spring.gym.master.dao;

import com.spring.gym.master.vo.MasterVO;
import com.spring.gym.member.vo.MemberVO;

public interface MasterDAO {

	public int idCheck(String userId);

	public int insertMaster(MemberVO masterVO);


}
