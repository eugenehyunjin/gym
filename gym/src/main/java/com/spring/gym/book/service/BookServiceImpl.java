package com.spring.gym.book.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.gym.book.dao.BookDAO;
import com.spring.gym.book.vo.BookVO;
import com.spring.gym.course.vo.CourseVO;

@Service("bookService")
public class BookServiceImpl implements BookService{
	@Autowired
	private BookDAO dao;

	public int insertBook(BookVO bookVO) {
		// TODO Auto-generated method stub
		int result = dao.insertBook(bookVO);
		return 0;
	}

	@Override
	public List<BookVO> listbook(String id) {
		// TODO Auto-generated method stub
		List<BookVO> list = dao.listbook(id);
		return list;
	}

	public void delbook(BookVO bookvo) {
		// TODO Auto-generated method stub
		dao.delbook(bookvo);
	}


}
