package com.spring.gym.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.spring.gym.board.dao.BoardDAO;
import com.spring.gym.board.vo.BoardVO;

@Service("boardService")
@Transactional(propagation = Propagation.REQUIRED)
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardDAO boardDAO;

	@Override
	public List<BoardVO> selectAllBoard() throws Exception {

		List<BoardVO> boardList = boardDAO.selectAllBoard();
		return boardList;
	}

	@Override
	public int insertBoard(BoardVO vo) throws Exception {

		return boardDAO.insertBoard(vo);

	}

	@Override
	public BoardVO viewBoard(int brd_no) throws Exception {
		BoardVO boardVO = boardDAO.selectBoard(brd_no);

		return boardVO;
	}

	@Override
	public void deleteBoard(int brd_no) throws Exception {
		boardDAO.deleteBoard(brd_no);

	}

	@Override
	public int modifyBoard(BoardVO vo) throws Exception {
	
		return boardDAO.modifyBoard(vo);
	}

}
