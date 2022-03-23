package com.ftnirp.board.dto;

import lombok.Data;

@Data
public class BoardVO {
	
	private int userId;
	private String userName;
	private String b_title;
	private String b_body;
	private String regDate;
	private String userFid;
	private Integer cnt;

}
