<%@page import="org.springframework.ui.Model"%>
<%@page import="com.ftnirp.board.dto.BoardVO"%>
<%@page import="com.ftnirp.board.dto.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>F.com</title>
<script type="text/javascript">
function formSubmit() {
	
var conf = confirm('정말로 삭제하시겠습니까?');
if (conf == true) {
document.getElementById("form").submit();
}else{
	
}

	
}


</script>

</head>
<body style="background-color: rgb(107, 103, 97);">

	<%MemberVO vo1 = (MemberVO)session.getAttribute("res");%>
	<%if (vo1 == null) { %>
	
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
				Name : <%=vo1.getFName() %> <br> ID :  <%=vo1.getFId() %>
			</p>
			<p>
				<span class="fs-16 primary-color">PH : <%=vo1.getPhoneNum() %></span>
			</p>
			<p>email : <%=vo1.getEmail() %></p>
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
	
	<form id ="form" action="delete?userId=${board.userId}" method="post" >
	
	<div style="text-align: center;">
		<h3>${board.b_title }</h3>
	</div>
	<hr>
	
	<br>

	<div style="position: absolute; left: 300px;">
		<strong>Date :</strong> ${board.regDate } <br>
		<strong>No.</strong> ${board.userId }  &nbsp;<strong>Name :</strong> ${board.userName}
	</div>
	
	<br>

	<div style="position: absolute; left: 300px; top: 300px;">
		<br><br>
		<h4><strong>Title : </strong>${board.b_title }</h4>
		<h4><strong>Content : </strong>${board.b_body }</h4>
	</div>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<%MemberVO vo = (MemberVO)session.getAttribute("res");%>
	<!-- session => session -->
	
	<%BoardVO vo2 = (BoardVO)request.getAttribute("board"); %>	
	<!-- model => request -->
	
	
	<hr>
	
	<%if (vo == null) {%>
   <%}else if(vo.getFId().equals(vo2.getUserFid())){ %>
 	  <div style="position: absolute; right: 285px;">
			<a href = "modify?userId=${board.userId }">수정하기</a>/
			<a href ="#" onclick="formSubmit(); return false;">삭제하기</a>/
		</div>
   <%} %>	
	</form>
	
	<a style="position: absolute; right: 220px;" href = "javascript:history.back();">뒤로가기</a>
	
	<br>
	<hr>

	<%@include file="footer.jsp"%>

</body>
</html>