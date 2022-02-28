package com.ftnirp.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ftnirp.board.dao.BoardDAO;
import com.ftnirp.board.dto.BoardVO;


@Service
public class BoardService {
	
	@Autowired
	public BoardDAO mapper;
	
	public List<BoardVO> getList(){
		return mapper.getList();
	}
	
	
}
