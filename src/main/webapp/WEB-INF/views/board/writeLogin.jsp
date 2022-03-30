<%@page import="com.ftnirp.board.dto.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>F.com</title>
</head>


<script type="text/javascript">
function back() {
history.back();	
}

function formSubmit() {
	
	var title = document.getElementById("b_title").value;
	var body = document.getElementById("b_body").value;
	
	if (title == false){
		alert("제목을 입력하세요.");
	}else if(body == false) {
		alert("내용을 입력하세요.");
	}else if (title != false & body !=false){
		document.getElementById("form").submit();
		alert("등록되었습니다.");
	}
}
	

</script>
<body>


	<%@ include file="header.jsp"%>
	
	<%MemberVO vo = (MemberVO)session.getAttribute("res"); %>

	<br>
	<br>
	<br>
	<hr>
	
	<form id ="form" action="insert_login" method="post" accept-charset="utf-8">
	
	<input type = "hidden" name = "userFid" id = "userFid" value ="<%=vo.getFId() %>">	
	
	<strong style="position: absolute; left: 225px;">작성자</strong>
	
	<br>
	
	<div style="text-align: center;">
		<input type="text" name = "userName" id = "userName" value = "<%=vo.getFName() %>" readonly="readonly" style="width: 1070px;">
	</div>
	
	<br>
	
	<strong style="position: absolute; left: 225px;">제목</strong>
	
	<br>
	
	<div style="text-align: center;">
		<input type="text" name = "b_title" id = "b_title" style="width: 1070px;" required>
	</div>
	
	<br>
	


	<strong style="position: absolute; left: 225px;">내용</strong>
	
	<br>

	<div style="text-align: center;">
		<textarea name = "b_body" id = "b_body" rows="20" cols="130" required></textarea>
	</div>
	<div style="position: absolute; left: 1155px;">
		<a href = "#" onclick="formSubmit(); return false;">등록하기</a>/
		<a href = "#" onclick="back(); return false;">목록으로</a>
	</div>
	
	</form>
	
	<br>
	<br>
	<hr>

	<%@include file="footer.jsp"%>

</body>
</html>