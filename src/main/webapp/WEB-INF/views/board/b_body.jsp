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
</head>
<body>


	<%@ include file="header.jsp"%>

	<br>
	<br>
	<br>
	<hr>
	
	<form action="delete?userId=${board.userId}" method="post" >
	
	<strong style="position: absolute; left: 225px;">제목</strong>
	
	<br>
	
	<div style="text-align: center;">
		<input type="text" style="width: 1070px;" readonly="readonly" value="${board.b_title }">
	</div>
	
	<br>


	<strong style="position: absolute; left: 225px;">내용</strong>
	
	<br>

	<div style="text-align: center;">
		<textarea rows="20" cols="130" readonly="readonly">${board.b_body }</textarea>
	</div>
	
	<%MemberVO vo = (MemberVO)session.getAttribute("res");%>
	<!-- session => session -->
	
	
	<%BoardVO vo2 = (BoardVO)request.getAttribute("board"); %>	
	<!-- model => request -->
	
	
	<%if (vo == null) {%>
	
		
		
   <%}else if(vo.getFId().equals(vo2.getUserFid())){ %>
 	  <div style="position: absolute; left: 220px;">
			<a class="btn btn-outline-primary btn-lg" href = "modify?userId=${board.userId }">수정하기</a>
			<button class="btn btn-outline-primary btn-lg" onclick="return confirm('정말로 삭제하시겠습니까?')" type="submit">삭제하기</button>
		</div>
   <%} %>	
	</form>

	
	<br>
	<br>
	<hr>

	<%@include file="footer.jsp"%>

</body>
</html>