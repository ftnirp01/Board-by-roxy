package com.ftnirp.board.dao;

import org.apache.ibatis.annotations.Mapper;

import com.ftnirp.board.dto.MemberVO;

@Mapper
public interface MemberDAO {

	int register(MemberVO params);
	
	MemberVO loginCheck(MemberVO params);
	
	int idCheck(MemberVO params);
	
}
