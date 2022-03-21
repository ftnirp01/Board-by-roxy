package com.ftnirp.board.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {
	
	private int pageNum;
	
	private int amount;
	
	
	//기본 생성자
	public Criteria() {
		this(1,10);
	}
	
	//생성자 원하는 PageNum , Amount
	public Criteria(int pageNum , int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}

}
