package com.ftnirp.board.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ftnirp.board.dao.MemberDAO;
import com.ftnirp.board.dto.MemberVO;

@Service
public class MemberService {
	
	@Autowired
	MemberDAO mapper;
	
	public int register(MemberVO params) {
		return mapper.register(params);
	}
	
	public MemberVO loginCheck(MemberVO params) {
		return mapper.loginCheck(params);
	}
	
	public int idCheck(MemberVO params) {
		return mapper.idCheck(params);
	}
	
	
	
}
