package com.spring.gym.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.gym.board.vo.BoardVO;
import com.spring.gym.board.vo.Criteria;
@Repository("boardDAO")
public class BoardDAOImpl implements BoardDAO{

	@Autowired
	private SqlSession sqlSession;
	@Override
	public List selectAllBoard() throws DataAccessException {
		
		List<BoardVO> boardList = sqlSession.selectList("mapper.board.selectAllBoard");
		return boardList;
	}
	@Override
	public int insertBoard(BoardVO vo) throws DataAccessException {
		
		int result = sqlSession.insert("mapper.board.insertBoard",vo);
		return result;
	}
	@Override
	public BoardVO selectBoard(int brd_no) throws DataAccessException {
		
		BoardVO boardVO = sqlSession.selectOne("mapper.board.selectBoard",brd_no);
	
		return boardVO;
	}
	@Override
	public void deleteBoard(int brd_no) throws DataAccessException {
		
		sqlSession.delete("mapper.board.deleteBoard", brd_no);
		
	}
	@Override
	public int modifyBoard(BoardVO vo) throws DataAccessException {
		
		
		int result = sqlSession.update("mapper.board.modifyBoard", vo);
				
		return result;
		
	}
	@Override
	public List<BoardVO> list(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.board.listPage", cri);
		
	}
	@Override
	public int listCount() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("mapper.board.listCount");
	}

}
