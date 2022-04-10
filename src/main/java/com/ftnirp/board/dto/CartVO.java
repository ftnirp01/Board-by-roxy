package com.ftnirp.board.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@Getter
@Setter
@ToString
public class CartVO {
	
	//상품 번호 , 사진 , 이름 , 수량 , 적립 , 배송비 ,  가격 , 주소
	
	
	private int cartNum;
	private String cartPic;
	private String cartName;
	private int cartQun;
	private int point;
	private String delPrice;
	private String cartPrice;
	private String href;
	
	
	public CartVO() {
	}

	public CartVO(int cartNum , String cartPic , String cartName , int cartQun , int point , 
				String delPrice , String cartPrice , String href) {
		setCartName(cartName);
		setCartNum(cartNum);
		setCartPic(cartPic);
		setCartPrice(cartPrice);
		setCartQun(cartQun);
		setDelPrice(delPrice);
		setPoint(point);
		setHref(href);
	}
	
	
	
}
