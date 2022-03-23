package com.ftnirp.board.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ftnirp.board.dto.BoardVO;
import com.ftnirp.board.dto.Criteria;
import com.ftnirp.board.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping("/list")
	public String showList(Model model , Criteria cri) {

		model.addAttribute("list" , boardService.getListPaging(cri));
		model.addAttribute("cnt" , boardService.pagingNum());
		
		
		return "board/list";
	}
	
	//로그인중 --------------------------------------------------------------
	
	@RequestMapping("/shop")
	public String showShop() {
		return "board/shop";
	}
	
	@RequestMapping("/nft")
	public String showNft() {
		return "board/nft";
	}
	
	@RequestMapping("/cart")
	public String showCart() {
		return "board/cart";
	}
	
	@RequestMapping("/write_login")
	public String showWriteLogin() {
		return "board/writeLogin";
	}
	
	@PostMapping("/insert_login")
	public String insertLogin(BoardVO params) {
		
		int isInsert = boardService.insertLogin(params);
		
		if (isInsert == 0) {
			System.out.println("게시물 등록 실패");
		}else {
			System.out.println("insert(회원) 완료");
		}
		
		return "redirect:/list?pageNum=1&amount=5";
		
	}
	
	
	// 상품 구매 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	
	@RequestMapping("/pants")
	public String showPants() {
		return "board/shop/pants";
	}
	
	@RequestMapping("/pants2")
	public String showPants2() {
		return "board/shop/pants2";
	}
	
	@RequestMapping("/socks")
	public String showSocks() {
		return "board/shop/socks";
	}
	
	@RequestMapping("/belt")
	public String showBelt() {
		return "board/shop/belt";
	}
	
	@RequestMapping("/jean")
	public String showJean() {
		return "board/shop/jean";
	}
	
	
	
	// 끝 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	
	
	
	
	

	//로그인중 --------------------------------------------------------------
	
	@RequestMapping("/write")
	public String showWrite() {
		return "board/write";
	}
	
	@RequestMapping("/body")
	public String showBody(@RequestParam(value = "userId", required = false) Long userId , Model model) {
		System.out.println("userId(조회) = " + userId);
		if (userId == null) {
			model.addAttribute("boardVO" , new BoardVO());
		}else {
			BoardVO board = boardService.listOne(userId);
			if (board == null) {
				return "redirect:/list";
			}
			model.addAttribute("board",board);
		}
		return "board/b_body";
	}
	
	@PostMapping("/insert")
	public String insert(BoardVO params) {
		
		int isInsert = boardService.insertBoard(params);
		
		if (isInsert == 0) {
			System.out.println("게시물 등록 실패");
		}else {
			System.out.println("insert(비회원) 완료");
		}
		
		return "redirect:/list?pageNum=1&amount=5";
	}
	
	@RequestMapping("/modify")
	public String showModify(@RequestParam(value = "userId", required = false) Long userId , Model model) {
		
		System.out.println("userId(수정) = " + userId);
		
		if (userId == null) {
			model.addAttribute("boardVO" , new BoardVO());
		}else {
			BoardVO board = boardService.listOne(userId);
			if (board == null) {
				return "redirect:/list";
			}
			model.addAttribute("board",board);
		}
		return "board/b_bodyModify";
	}
	
	@PostMapping("/modify")
	public String updateBoard(BoardVO params) {
		boardService.updateBoard(params);
		return "redirect:/list";
	}
	
	@PostMapping("/delete")
	public String deleteBoard (int userId) {
		System.out.println("userId(삭제) = " + userId);
		boardService.deleteBoard(userId);
		return "redirect:/list";
	}
	
	
}
