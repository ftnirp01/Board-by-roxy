package com.ftnirp.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ftnirp.board.dto.BoardVO;

@Mapper
public interface BoardDAO {

	
	List<BoardVO> getList(); //전체 조회
	
	BoardVO listOne(Long userId); //상세 조회
	
	int insertBoard(BoardVO params); //글 생성
	
	void updateBoard(BoardVO params); //글 수정
	
	void deleteBoard(int userId);
	
}
