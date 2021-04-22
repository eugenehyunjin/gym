package com.spring.gym.master.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.gym.master.dao.MasterDAO;

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

}
