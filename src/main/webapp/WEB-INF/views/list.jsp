<%@page import="java.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>F.com</title>
</head>
<body>
	
	<%@ include file = "header.jsp" %>	
	<br><br><br>
	
	<hr>
	
	<div class = "row text-center">
		<div class = "col-md-3">
			<strong>��ȣ</strong>
		</div>
		<div class = "col-md-3">
			<strong>����</strong>
		</div>
		<div class = "col-md-3">
			<strong>�۾���</strong>
		</div>
		<div class = "col-md-3">
			<strong>�����</strong>
		</div>
	</div>
	
	<hr>	
	
	<c:forEach items="${list }" var="board">
	
	
	
	<div class = "row text-center mt-4">
		<div class = "col-md-3">
			<p>${board.userId }</p>
		</div>
		<div class = "col-md-3">
			<p>${board.b_title }</p>
		</div>
		<div class = "col-md-3">
			<p>${board.userName}</p>
		</div>
		<div class = "col-md-3">
			<p>${board.regDate }</p>
		</div>
	</div>
	
	<hr>
	
	</c:forEach>
	
	
	<!-- ����¡ -->
	<div  style="text-align: center;">
		<a class = "btn">1</a>
	</div>
	
	<!-- �� �ۼ� ��ư -->
	
	<div>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a class="btn btn-outline-primary btn-lg">�� ��</a>
		<a class="btn btn-outline-primary btn-lg">�͸� ��</a>
	</div>

	
	
	
	
			
	
	
	
	<hr>
	<%@ include file = "footer.jsp" %>


</body>
</html>