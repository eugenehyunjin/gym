package com.spring.gym.board.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.spring.gym.board.vo.BoardVO;
import com.spring.gym.board.vo.Criteria;

public interface BoardDAO {
	
	public List selectAllBoard() throws DataAccessException;

	public int insertBoard(BoardVO vo) throws DataAccessException;

	public BoardVO selectBoard(int brd_no)throws DataAccessException;

	public void deleteBoard(int brd_no)throws DataAccessException;

	public int modifyBoard(BoardVO vo)throws DataAccessException;
	
	public List<BoardVO> list(Criteria cri)throws Exception;
	
	public int listCount()throws Exception;
	
}
