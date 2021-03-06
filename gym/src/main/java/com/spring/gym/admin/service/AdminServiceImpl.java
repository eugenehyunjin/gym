package com.spring.gym.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.gym.admin.dao.AdminDAO;
import com.spring.gym.board.vo.Criteria;
import com.spring.gym.course.vo.CourseVO;
import com.spring.gym.member.vo.MemberVO;

@Service("adminService")
public class AdminServiceImpl implements AdminService{
	@Autowired
	private AdminDAO adminDAO;

	@Override
	public List<MemberVO> selectAllMember() {
		// TODO Auto-generated method stub
		List<MemberVO> memberList = adminDAO.selectAllMember();
		return memberList;
	}

	public int memberDel(String id) {
		// TODO Auto-generated method stub
		int result = adminDAO.memberDel(id);
		return result;
	}

	@Override
	public int listCount() throws Exception {
		// TODO Auto-generated method stub
		return adminDAO.listCount();
	}

	@Override
	public List<MemberVO> list(Criteria cri) {
		// TODO Auto-generated method stub
		return adminDAO.list(cri);
	}

	@Override
	public List<MemberVO> listMaster(Criteria cri) {
		// TODO Auto-generated method stub
		return adminDAO.listMaster(cri);
	}

	public int masterDel(String id) {
		// TODO Auto-generated method stub
		int result = adminDAO.masterDel(id);
		return result;
	}

	@Override
	public List<CourseVO> listCourse(Criteria cri) {
		// TODO Auto-generated method stub
		return adminDAO.listCourse(cri);
	}

	public int courseListCount() {
		// TODO Auto-generated method stub
		return adminDAO.courseListCount();
	}

	


}
