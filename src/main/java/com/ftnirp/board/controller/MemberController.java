package com.ftnirp.board.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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
		return "member/login";
	}
	
	@RequestMapping("/loginSuccess")
	public String loginSuccess() {
		return "member/index";
	}
	
	
	@RequestMapping("/join")
	public String showJoin() {
		return "member/join";
	}
	
	@PostMapping("/register")
	public void register(MemberVO params , HttpServletResponse response) throws IOException {
		
		int isRegister = service.register(params);
		
		if (isRegister == 0) {
			System.out.println("회원가입 실패");
		}else {
			 System.out.println("alert 띄움");
			 response.setContentType("text/html; charset=UTF-8");
			 PrintWriter writer = response.getWriter();
	         writer.println("<script type = 'text/javascript'>");
	         writer.println("alert('회원가입 되었습니다.');");
	         writer.println("location.href='/';");
	         writer.println("</script>");
		}
	}
	
	
	@PostMapping("/login")
	public void loginCheck(@ModelAttribute MemberVO params , HttpServletRequest request , HttpServletResponse response) throws IOException {
		
		HttpSession session = request.getSession();
		MemberVO res = service.loginCheck(params);
		
		ModelAndView mav = new ModelAndView();
		
		if (res!=null) {
			//세션 저장
			System.out.println("로그인 성공");
			session.setAttribute("res", res);
			mav.addObject("msg" , "Success");
			 response.setContentType("text/html; charset=UTF-8");
			 PrintWriter writer = response.getWriter();
	         writer.println("<script type = 'text/javascript'>");
	         writer.println("location.href='loginSuccess';");
	         writer.println("</script>");
		
		}else {
			mav.addObject("msg" , "Failure");
			 response.setContentType("text/html; charset=UTF-8");
			 PrintWriter writer = response.getWriter();
	         writer.println("<script type = 'text/javascript'>");
	         writer.println("alert('아이디 또는 비밀번호가 일치하지 않습니다.');");
	         writer.println("location.href='login';");
	         writer.println("</script>");
		}
	}
	
	@GetMapping("/logout")
	public void logout(HttpServletRequest request , HttpServletResponse response) throws IOException {
		
		HttpSession session = request.getSession();
		session.invalidate();
		
		System.out.println("로그아웃 완료");
		
		 response.setContentType("text/html; charset=UTF-8");
		 PrintWriter writer = response.getWriter();
         writer.println("<script type = 'text/javascript'>");
         writer.println("alert('로그아웃이 정상적으로 되었습니다.');");
         writer.println("location.href='/';");
         writer.println("</script>");
		
	}
	

}
