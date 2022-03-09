<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
	
	<form action="insert" method="post" accept-charset="utf-8">
	
	<strong style="position: absolute; left: 225px;">제목</strong>
	
	<br>
	
	<div style="text-align: center;">
		<input type="text" name = "b_title" id = "b_title" style="width: 1070px;">
	</div>
	
	<br>


	<strong style="position: absolute; left: 225px;">내용</strong>
	
	<br>

	<div style="text-align: center;">
		<textarea name = "b_body" id = "b_body" rows="20" cols="130" ></textarea>
	</div>

	<div style="position: absolute; left: 1155px;">
		<button class = "btn btn-outline-primary btn-lg" type="submit">저장</button>
		<button class = "btn btn-outline-primary btn-lg" type="reset">취소</button>
	</div>
	
	</form>
	
	<br>
	<br>
	<hr>

	<%@include file="footer.jsp"%>

</body>
</html>