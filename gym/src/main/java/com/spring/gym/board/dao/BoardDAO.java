package com.spring.gym.board.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.spring.gym.board.vo.BoardVO;

public interface BoardDAO {
	
	public List selectAllBoard() throws DataAccessException;

	public int insertBoard(BoardVO vo) throws DataAccessException;
}
