<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.ftnirp.board.dto.MemberVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%MemberVO vo = (MemberVO)session.getAttribute("res");%>

<%if (vo != null) { %>
	�α��� ����<br>
<% }else{ %>
 �α��� ����<br>
<%} %>
 
 <%=vo %> <br>
 
�̸� : <%= vo.getFName() %> <br>
�̸��� : <%= vo.getEmail() %> <br>
���̵� : <%= vo.getFId() %> <br>




</body>
</html>