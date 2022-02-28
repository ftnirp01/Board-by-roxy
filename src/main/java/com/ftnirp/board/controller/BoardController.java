package com.ftnirp.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ftnirp.board.dto.BoardVO;
import com.ftnirp.board.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping("/list")
	public String showList(Model model) {

		List<BoardVO> elist = boardService.getList();
		model.addAttribute("list", elist);
		
		return "list";
	}

}
