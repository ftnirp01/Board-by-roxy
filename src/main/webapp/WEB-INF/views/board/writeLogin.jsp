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
		alert("������ �Է��ϼ���.");
	}else if(body == false) {
		alert("������ �Է��ϼ���.");
	}else if (title != false & body !=false){
		document.getElementById("form").submit();
		alert("��ϵǾ����ϴ�.");
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
	
	<strong style="position: absolute; left: 225px;">�ۼ���</strong>
	
	<br>
	
	<div style="text-align: center;">
		<input type="text" name = "userName" id = "userName" value = "<%=vo.getFName() %>" readonly="readonly" style="width: 1070px;">
	</div>
	
	<br>
	
	<strong style="position: absolute; left: 225px;">����</strong>
	
	<br>
	
	<div style="text-align: center;">
		<input type="text" name = "b_title" id = "b_title" style="width: 1070px;" required>
	</div>
	
	<br>
	


	<strong style="position: absolute; left: 225px;">����</strong>
	
	<br>

	<div style="text-align: center;">
		<textarea name = "b_body" id = "b_body" rows="20" cols="130" required></textarea>
	</div>
	<div style="position: absolute; left: 1155px;">
		<a href = "#" onclick="formSubmit(); return false;">����ϱ�</a>/
		<a href = "#" onclick="back(); return false;">�������</a>
	</div>
	
	</form>
	
	<br>
	<br>
	<hr>

	<%@include file="footer.jsp"%>

</body>
</html>