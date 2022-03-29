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

	<%@ include file="header.jsp"%>

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