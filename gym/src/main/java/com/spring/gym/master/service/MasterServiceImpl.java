package com.spring.gym.master.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.gym.master.dao.MasterDAO;
import com.spring.gym.master.vo.MasterVO;
import com.spring.gym.member.vo.MemberVO;

@Service("masterService")
public class MasterServiceImpl implements MasterService{
	@Autowired
	MasterDAO dao;
	
	@Override
	public int idCheck(String userId) {
		// TODO Auto-generated method stub
		int result = dao.idCheck(userId);
		return result;
	}

	@Override
	public int insertMaster(MasterVO masterVO) {
		// TODO Auto-generated method stub
		int result = dao.insertMaster(masterVO);
		return result;
	}

	public int checklogin(MasterVO masterVO) {
		// TODO Auto-generated method stub
		int result = dao.checklogin(masterVO);
		return result;
	}

}
