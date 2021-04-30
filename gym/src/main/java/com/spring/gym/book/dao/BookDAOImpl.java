package com.spring.gym.book.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.gym.book.vo.BookVO;

@Repository("bookDAO")
public class BookDAOImpl implements BookDAO{
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertBook(BookVO bookVO) {
		// TODO Auto-generated method stub
		int result = sqlSession.insert("mapper.book.insertBook", bookVO);
		return result;
	}

	@Override
	public List<BookVO> listbook(String id) {
		// TODO Auto-generated method stub
		List<BookVO> list = sqlSession.selectList("mapper.book.listBook", id);
		return list;
	}

	@Override
	public void delbook(BookVO bookvo) {
		// TODO Auto-generated method stub
		sqlSession.delete("mapper.book.delBook", bookvo);
	}
	

	public List<BookVO> stuList(String course_id) {
		// TODO Auto-generated method stub
		List<BookVO> list = sqlSession.selectList("mapper.book.stuList", course_id);
		return list;
	}

}
