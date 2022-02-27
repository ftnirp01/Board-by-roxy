package com.ftnirp.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	
	@RequestMapping("/list")
	public String showList() {
		
		return "list";
	}

}
