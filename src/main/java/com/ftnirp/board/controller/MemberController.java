package com.ftnirp.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@RequestMapping("/login")
	public String showLogin() {
		return "login";
	}
	
	
	@RequestMapping("/join")
	public String showJoin() {
		return "join";
	}
	
	
	
}
