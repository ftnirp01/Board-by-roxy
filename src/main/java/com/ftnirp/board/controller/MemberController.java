package com.ftnirp.board.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ftnirp.board.dto.MemberVO;
import com.ftnirp.board.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService service;
	
	
	@RequestMapping("/login")
	public String showLogin() {
		return "login";
	}
	
	
	@RequestMapping("/join")
	public String showJoin() {
		return "join";
	}
	
	@PostMapping("/register")
	public String register(MemberVO params , HttpServletResponse response) throws IOException {
		
		int isRegister = service.register(params);
		
		if (isRegister == 0) {
			System.out.println("회원가입 실패");
		}else {
			 System.out.println("alert 띄움");
			 PrintWriter writer = response.getWriter();
	         writer.println("<script type = 'text/javascript'>");
	         writer.println("alert('회원가입 되었습니다.');");
	         writer.println("</script>");
		}
		
		return "redirect:/";
		
	}
	
	
	@PostMapping("/login")
	public String loginCheck(@ModelAttribute MemberVO params , HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		MemberVO res = service.loginCheck(params);
		
		ModelAndView mav = new ModelAndView();
		
		if (res!=null) {
			//세션 저장
			System.out.println("로그인 성공");
			session.setAttribute("res", res);
			mav.addObject("msg" , "Success");
			return "redirect:/";
		}else {
			mav.addObject("msg" , "Failure");
			return "redirect:/login";
		}
	}
	
	@RequestMapping("/test")
	public String test() {
		return "/Login_test";
	}
	
	
	
}
