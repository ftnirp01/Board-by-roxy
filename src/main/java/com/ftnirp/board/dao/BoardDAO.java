package com.ftnirp.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ftnirp.board.dto.BoardVO;

@Mapper
public interface BoardDAO {

	
	List<BoardVO> getList();
	
	BoardVO listOne(Long userId);
	
	int insertBoard(BoardVO params);
	
}
