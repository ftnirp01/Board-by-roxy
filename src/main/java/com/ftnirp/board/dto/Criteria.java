package com.ftnirp.board.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {
				//현재페이지 , 시작페이지 , 	끝페이지 ,   게시물 총 개수 ,페이지당 글 개수,	 마지막 페이지 , 쿼리용 start , end	 
	private int pageNum ,  startPage ,  endPage  , total    , cntPerPage,	lastPage  , start , end ;
	
	private int amount = 5; //페이지 글 개수
	
	
	//기본 생성자
	public Criteria() {
	}
	
	public Criteria(int pageNum , int total , int cntPerPage) {
		
		setPageNum(total);
		setCntPerPage(cntPerPage);
		setTotal(pageNum);
		calcLastPage(getTotal(), getCntPerPage());
		calcStartEndPage(getPageNum(), amount);
		calcStartEnd(getPageNum(), getCntPerPage());
		
	}

	
	// 제일 마지막 페이지 계산
	public void calcLastPage(int total, int cntPerPage) {
		setLastPage((int)Math.ceil((double)total / (double)cntPerPage));
	}
	
	// 시작, 끝 페이지 계산
	public void calcStartEndPage(int pageNum, int amount) {
		
		setEndPage(((int)Math.ceil((double)pageNum / (double)amount)) * amount);
		
		if (getLastPage() < getEndPage()) {
			setEndPage(getLastPage());
		}
		
		setStartPage(getEndPage() - amount + 1);
		if (getStartPage() < 1) {
			setStartPage(1);
		}
	}
	
	// DB 쿼리에서 사용할 start, end값 계산
	public void calcStartEnd(int pageNum, int cntPerPage) {
		setEnd(pageNum * cntPerPage);
		setStart(getEnd() - cntPerPage + 1);
	}
	
}
