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
	
	<strong style="position: absolute; left: 225px;">����</strong>
	
	<br>
	
	<div style="text-align: center;">
		<input type="text" style="width: 1070px;" readonly="readonly" value="${board.b_title }">
	</div>
	
	<br>


	<strong style="position: absolute; left: 225px;">����</strong>
	
	<br>

	<div style="text-align: center;">
		<textarea rows="20" cols="130" readonly="readonly">${board.b_body }</textarea>
	</div>
	
	
	<div style="position: absolute; left: 220px;">
		<a class="btn btn-outline-primary btn-lg" href = "modify?userId=${board.userId }">�����ϱ�</a>
		<button class="btn btn-outline-primary btn-lg" onclick="return confirm('������ �����Ͻðڽ��ϱ�?')" type="submit">�����ϱ�</button>
	</div>
	
	</form>

	
	<br>
	<br>
	<hr>

	<%@include file="footer.jsp"%>

</body>
</html>