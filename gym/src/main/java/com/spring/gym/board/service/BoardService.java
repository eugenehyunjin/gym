package com.spring.gym.board.service;

import java.util.List;

import com.spring.gym.board.vo.BoardVO;
import com.spring.gym.board.vo.Criteria;

public interface BoardService {

	
	public List<BoardVO> selectAllBoard() throws Exception;

	public int insertBoard(BoardVO vo) throws Exception;

	public BoardVO viewBoard(int brd_no) throws Exception;

	public void deleteBoard(int brd_no)throws Exception;

	public int modifyBoard(BoardVO vo)throws Exception;

	public List<BoardVO> list(Criteria cri)throws Exception;
	
	public int listCount()throws Exception;
}
