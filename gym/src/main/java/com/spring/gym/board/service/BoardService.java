package com.spring.gym.board.service;

import java.util.List;

import com.spring.gym.board.vo.BoardVO;

public interface BoardService {

	public List<BoardVO> selectAllBoard() throws Exception;

	public int insertBoard(BoardVO vo) throws Exception;


	
}
