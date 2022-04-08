package com.ftnirp.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ftnirp.board.dto.BoardVO;
import com.ftnirp.board.dto.CartVO;
import com.ftnirp.board.dto.Criteria;

@Mapper
public interface BoardDAO {

	
	List<BoardVO> getList(); //전체 조회
	
	List<BoardVO> getListPaging(Criteria cri); //페이징 + 조회
	
	Integer pagingNum(); //게시물 개수 확인
	
	BoardVO listOne(Long userId); //상세 조회
	
	int insertBoard(BoardVO params); //글 생성
	
	int insertLogin(BoardVO params); //로그인 유저 글생성
	
	void updateBoard(BoardVO params); //글 수정
	
	void deleteBoard(int userId); //글 삭제
	
	int pantsCart(CartVO cartVO); //pants 장바구니에 추가
	
	int pants2Cart(CartVO cartVO); //pants2 장바구니에 추가

	int beltCart(CartVO cartVO); //belt 장바구니에 추가
	
	int jeanCart(CartVO cartVO); //jean 장바구니에 추가
	
	int socksCart(CartVO cartVO); //socks 장바구니에 추가
	
	void deleteCart(int cartNum); //장바구니 삭제
	
	List<CartVO> cartList(); //장바구니 조회
	
}
