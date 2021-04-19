package com.spring.gym.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.gym.board.vo.BoardVO;
@Repository("boardDAO")
public class BoardDAOImpl implements BoardDAO{

	@Autowired
	private SqlSession sqlSession;
	@Override
	public List selectAllBoard() throws DataAccessException {
		
		List<BoardVO> boardList = sqlSession.selectList("mapper.board.selectAllBoard");
		return boardList;
	}

}
