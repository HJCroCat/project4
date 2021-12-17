package com.koravle.dao;

import java.util.HashMap;
import java.util.List;

import com.koravle.domain.BoardVO;

public interface BoardDAO {
	public void insertBoard(BoardVO vo);

	public void updateBoard(BoardVO vo) ;

	public void deleteBoard(BoardVO vo);

	public BoardVO getBoard(BoardVO vo) ;

	public void getBoardList(BoardVO vo) ;
}
