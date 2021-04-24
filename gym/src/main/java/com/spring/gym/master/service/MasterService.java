package com.spring.gym.master.service;

import com.spring.gym.master.vo.MasterVO;
import com.spring.gym.member.vo.MemberVO;

public interface MasterService {

	public int idCheck(String userId);

	public int insertMaster(MasterVO masterVO);

	public int checklogin(MasterVO masterVO);



}
