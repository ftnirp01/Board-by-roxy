<%@page import="com.ftnirp.board.dto.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>F.com</title>
</head>
<body style="background-color: pink;">

	<%MemberVO vo = (MemberVO)session.getAttribute("res");%>
	<%if (vo == null) { %>
	
	<%@include file = "header.jsp" %>
	<div id="side-nav" class="sidenav">
	<a href="javascript:void(0)" id="side-nav-close">&times;</a>
		<div class="sidenav-content">
			프로필을 확인하려면
			<a href = "login">로그인</a> ============ <a href = "join">회원가입</a>
		</div>
	</div>	
	
	<%} else { %>
	
	<%@include file = "header_login.jsp" %>
	<div id="side-nav" class="sidenav">
		<a href="javascript:void(0)" id="side-nav-close">&times;</a>
		<div class="sidenav-content">
			<p>
				Name : <%=vo.getFName() %> <br> ID :  <%=vo.getFId() %>
			</p>
			<p>
				<span class="fs-16 primary-color">PH : <%=vo.getPhoneNum() %></span>
			</p>
			<p>email : <%=vo.getEmail() %></p>
		</div>
	</div>	
	<%}%> 
	
		


	<div id="side-search" class="sidenav">
	<a href="javascript:void(0)" id="side-search-close">&times;</a>
		<div class="sidenav-content">
			<form action="">

				<div class="input-group md-form form-sm form-2 pl-0">
			 		 <input class="form-control my-0 py-1 red-border" type="text" placeholder="Search" aria-label="Search">
			 	 <div class="input-group-append">
			   	 <button class="input-group-text red lighten-3" id="basic-text1">
			    	<span class="lnr lnr-magnifier"></span>
			    	</button>
			 	 </div>
				</div>
			</form>
		</div>
	
	</div>
	<br>
	<br>
	<br>
	<hr>
	
	<!-- update form action에 userId 포함 시켜야 정상적으로 update가 된다 -->
	
	
	
	<form action="modify?userId=${board.userId }" method="post" accept-charset="utf-8">
	
	<strong style="position: absolute; left: 225px;">제목</strong>
	
	<br>
	
	<div style="text-align: center;">
		<input type="text" name = "b_title" style="width: 1070px;"  value="${board.b_title}"/>
	</div>
	
	<br>


	<strong style="position: absolute; left: 225px;">내용</strong>
	
	<br>

	<div style="text-align: center;">
		<textarea name = "b_body" rows="20" cols="130" id = "b_body">${board.b_body}</textarea>
	</div>
	
	
	
	<div style="position: absolute; left: 220px;">
	
		<input class="btn btn-outline-primary btn-lg" onclick="alert('수정이 정상적으로 되었습니다.')" type="submit" value="수정하기"/>
		
		<input class="btn btn-outline-primary btn-lg" type="reset" value = "취소하기"/>
		
	</div>
	
	</form>
	
	<a style="position: absolute; right: 220px;" href = "javascript:history.back();">뒤로가기</a>
	
	<br>
	<br>
	<hr>

	<%@include file="footer.jsp"%>

</body>
</html>