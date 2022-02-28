<%@page import="java.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<%@ include file = "header.jsp" %>	
	<br><br><br>
	
	<hr>
	
	<div class = "row text-center mt-4">
		<div class = "col-md-3">
			<p>번호</p>
		</div>
		<div class = "col-md-3">
			<p>제목</p>
		</div>
		<div class = "col-md-3">
			<p>등록일</p>
		</div>
		<div class = "col-md-3">
			<p>글쓴이</p>
		</div>
	</div>
	
	<hr>
	
	<c:forEach items="${list }" var="board">
	
	
	<hr>
	
	<div class = "row text-center mt-4">
		<div class = "col-md-3">
			<p>${board.userId }</p>
		</div>
		<div class = "col-md-3">
			<p>${board.b_title }</p>
		</div>
		<div class = "col-md-3">
			<p>${board.regDate }</p>
		</div>
		<div class = "col-md-3">
			<p>${board.userName}</p>
		</div>
	</div>
	
	<hr>
	
	</c:forEach>
		
	
	
	
	
	
	
	<br><br><br><br>
	<%@ include file = "footer.jsp" %>


</body>
</html>