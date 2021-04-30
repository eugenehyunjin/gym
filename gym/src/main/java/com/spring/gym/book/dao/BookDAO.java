package com.spring.gym.book.dao;

import java.util.List;

import com.spring.gym.book.vo.BookVO;

public interface BookDAO {

	public int insertBook(BookVO bookVO);

	public List<BookVO> listbook(String id);

	public void delbook(BookVO bookvo);

	public List<BookVO> stuList(String course_id);

	public void deleteBook(int book_id);



}
