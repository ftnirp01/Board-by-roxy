package com.ftnirp.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ftnirp.board.dao.BoardDAO;
import com.ftnirp.board.dto.BoardVO;
import com.ftnirp.board.dto.CartVO;
import com.ftnirp.board.dto.Criteria;


@Service
public class BoardService {
	
	@Autowired
	public BoardDAO mapper;
	
	public List<BoardVO> getList(){
		return mapper.getList();
	}
	
	public List<BoardVO> getListPaging(Criteria cri){
		return mapper.getListPaging(cri);
	}
	
	public Integer pagingNum() {
		return mapper.pagingNum();
	}
	
	public BoardVO listOne(Long userId) {
		return mapper.listOne(userId);
	}
	
	public int insertBoard(BoardVO params) {
		return mapper.insertBoard(params);
	}
	
	public int insertLogin(BoardVO params) {
		return mapper.insertLogin(params);
	}
	
	public void updateBoard(BoardVO params) {
		mapper.updateBoard(params);
	}
	
	public void deleteBoard(int userId) {
		mapper.deleteBoard(userId);
	}
	
	public int pantsCart(CartVO cartVO) {
		return mapper.pantsCart(cartVO);
	}
	
	public List<CartVO> cartList() {
		return mapper.cartList();
	}
	
	
}
