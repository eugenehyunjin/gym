package com.spring.gym.board.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

public interface BoardDAO {
	
	public List selectAllBoard() throws DataAccessException;
}
