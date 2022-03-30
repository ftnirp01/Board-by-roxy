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
<body style="background-color: pink;">

	<%MemberVO vo = (MemberVO)session.getAttribute("res");%>
	<%if (vo == null) { %>
	
	<%@include file = "header.jsp" %>
	<div id="side-nav" class="sidenav">
	<a href="javascript:void(0)" id="side-nav-close">&times;</a>
		<div class="sidenav-content">
			�������� Ȯ���Ϸ���
			<a href = "login">�α���</a> ============ <a href = "join">ȸ������</a>
		</div>
	</div>	
	
	<%} else { %>
	
	<%@include file = "header_login.jsp" %>
	<div id="side-nav" class="sidenav">
		<a href="javascript:void(0)" id="side-nav-close">&times;</a>
		<div class="sidenav-content">
			<p>
				Name : <%=vo.getFName() %> <br> ID :  <%=vo.getFId() %>
			</p>
			<p>
				<span class="fs-16 primary-color">PH : <%=vo.getPhoneNum() %></span>
			</p>
			<p>email : <%=vo.getEmail() %></p>
		</div>
	</div>	
	<%}%> 
	
		


	<div id="side-search" class="sidenav">
	<a href="javascript:void(0)" id="side-search-close">&times;</a>
		<div class="sidenav-content">
			<form action="">

				<div class="input-group md-form form-sm form-2 pl-0">
			 		 <input class="form-control my-0 py-1 red-border" type="text" placeholder="Search" aria-label="Search">
			 	 <div class="input-group-append">
			   	 <button class="input-group-text red lighten-3" id="basic-text1">
			    	<span class="lnr lnr-magnifier"></span>
			    	</button>
			 	 </div>
				</div>
			</form>
		</div>
	
	</div>
	<br>
	<br>
	<br>
	<hr>
	
	<!-- update form action�� userId ���� ���Ѿ� ���������� update�� �ȴ� -->
	
	
	
	<form action="modify?userId=${board.userId }" method="post" accept-charset="utf-8">
	
	<strong style="position: absolute; left: 225px;">����</strong>
	
	<br>
	
	<div style="text-align: center;">
		<input type="text" name = "b_title" style="width: 1070px;"  value="${board.b_title}"/>
	</div>
	
	<br>


	<strong style="position: absolute; left: 225px;">����</strong>
	
	<br>

	<div style="text-align: center;">
		<textarea name = "b_body" rows="20" cols="130" id = "b_body">${board.b_body}</textarea>
	</div>
	
	
	
	<div style="position: absolute; left: 220px;">
	
		<input class="btn btn-outline-primary btn-lg" onclick="alert('������ ���������� �Ǿ����ϴ�.')" type="submit" value="�����ϱ�"/>
		
		<input class="btn btn-outline-primary btn-lg" type="reset" value = "����ϱ�"/>
		
	</div>
	
	</form>
	
	<a style="position: absolute; right: 220px;" href = "javascript:history.back();">�ڷΰ���</a>
	
	<br>
	<br>
	<hr>

	<%@include file="footer.jsp"%>

</body>
</html>