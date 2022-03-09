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
	로그인 성공<br>
<% }else{ %>
 로그인 실패<br>
<%} %>
 
 <%=vo %> <br>
 
이름 : <%= vo.getFName() %> <br>
이메일 : <%= vo.getEmail() %> <br>
아이디 : <%= vo.getFId() %> <br>




</body>
</html>