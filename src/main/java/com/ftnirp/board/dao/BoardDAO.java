package com.ftnirp.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ftnirp.board.dto.BoardVO;
import com.ftnirp.board.dto.Criteria;

@Mapper
public interface BoardDAO {

	
	List<BoardVO> getList(); //전체 조회
	
	List<BoardVO> getListPaging(Criteria cri); //페이징 + 조회
	
	Integer pagingNum(); //페이징
	
	BoardVO listOne(Long userId); //상세 조회
	
	int insertBoard(BoardVO params); //글 생성
	
	int insertLogin(BoardVO params); //로그인 유저 글생성
	
	void updateBoard(BoardVO params); //글 수정
	
	void deleteBoard(int userId); //글 삭제
	
}
