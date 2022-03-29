<%@page import="java.util.List"%>
<%@page import="com.ftnirp.board.dto.BoardVO"%>
<%@page import="com.ftnirp.board.dto.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!--
     - Roxy: Bootstrap template by GettTemplates.com
     - https://gettemplates.co/roxy
    -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>F.com</title>
    <meta name="description" content="Roxy">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- External CSS -->
    <link rel="stylesheet" href="vendor/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="vendor/select2/select2.min.css">
    <link rel="stylesheet" href="vendor/owlcarousel/owl.carousel.min.css">
    <link rel="stylesheet" href="vendor/lightcase/lightcase.css">
     <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400|Work+Sans:300,400,700" rel="stylesheet">

    <!-- CSS -->
    <link rel="stylesheet" href="css/style.min.css">
    <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

    <!-- Modernizr JS for IE8 support of HTML5 elements and media queries -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.js">
    
    
    
    </script>
    
    <script>
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href="list?pageNum=${paging.pageNum}&cntPerPage="+sel;
	}
	</script>

</head>
<body data-spy="scroll" data-target="#navbar" class="static-layout">

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
	
</div>	<div class="jumbotron d-flex align-items-center">
  <div class="container text-center">
    <h1 class="display-1 mb-4">BOARD</h1>
  </div>
  <div class="rectangle-1"></div>
  <div class="rectangle-2"></div>
  <div class="rectangle-transparent-1"></div>
  <div class="rectangle-transparent-2"></div>
  <div class="circle-1"></div>
  <div class="circle-2"></div>
  <div class="circle-3"></div>
  <div class="triangle triangle-1">
  	<img src="img/obj_triangle.png" alt="">
  </div>
  <div class="triangle triangle-2">
  	<img src="img/obj_triangle.png" alt="">
  </div>
  <div class="triangle triangle-3">
  	<img src="img/obj_triangle.png" alt="">
  </div>
  <div class="triangle triangle-4">
  	<img src="img/obj_triangle.png" alt="">
  </div>
</div>	<!-- Features Section-->

	<!-- External JS -->
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
	<script src="vendor/bootstrap/popper.min.js"></script>
	<script src="vendor/bootstrap/bootstrap.min.js"></script>
	<script src="vendor/select2/select2.min.js "></script>
	<script src="vendor/owlcarousel/owl.carousel.min.js"></script>
	<script src="vendor/stellar/jquery.stellar.js" type="text/javascript" charset="utf-8"></script>
	<script src="vendor/isotope/isotope.min.js"></script>
	<script src="vendor/lightcase/lightcase.js"></script>
	<script src="vendor/waypoints/waypoint.min.js"></script>
	 <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
	 
	<!-- Main JS -->
	<script src="js/app.min.js "></script>
	<script src="//localhost:35729/livereload.js"></script>
	
	
	<br><br>
	
	<div style="text-align: center;">
		<h1>���ǻ���</h1>
	</div>
	
	<div style="position: absolute; right: 10px;">
		<select id ="cntPerPage" name="sel" onchange="selChange()">
			<option value="5" <c:if test="${paging.cntPerPage == 5}">selected</c:if>>5�� ����</option>
			<option value="10" <c:if test="${paging.cntPerPage == 10}">selected</c:if>>10�� ����</option>
			<option value="15"<c:if test="${paging.cntPerPage == 15}">selected</c:if>>15�� ����</option>
		</select>
	</div>
	
	 <!-- �ɼǼ��� �� -->
	
	<br>
	
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
	
	<c:forEach items="${list}" var="board">
	
	<div class = "row text-center mt-4">
		<div class = "col-md-3">
			<p>${board.userId}</p>
		</div>
		<div class = "col-md-3">
			<a href = "body?userId=${board.userId }">${board.b_title }</a>
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
	
	
	<div style="text-align: center;">
		<c:if test="${paging.startPage != 1 }">
			<a href="/list?pageNum=1&cntPerPage=${paging.cntPerPage}"> &lt;&lt; </a>&nbsp;
		</c:if>
		<c:if test="${paging.startPage != 1 }">
			<a href="/list?pageNum=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}"> &lt; </a>
		</c:if>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
			<c:choose>
				<c:when test="${p == paging.pageNum }">
					<b>${p}</b>
				</c:when>
				<c:when test="${p != paging.pageNum }">
					<a href="/list?pageNum=${p}&cntPerPage=${paging.cntPerPage}"> ${p} </a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="/list?pageNum=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}"> &gt; </a>
		</c:if>
		&nbsp;
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="/list?pageNum=${paging.lastPage }&cntPerPage=${paging.cntPerPage}"> &gt;&gt; </a>
		</c:if>
		
	</div>
	
	<!-- ����¡ �� -->
	
		
	<!-- �� �ۼ� ��ư -->
	
	<%MemberVO vo2 = (MemberVO)session.getAttribute("res");%>
	
	<%if(vo2 == null) {%>
	
	<div style="position: absolute; left: 160px;">
		<a class="btn btn-outline-primary btn-lg" href = "write">�����ϱ�</a>
	</div>
	
	<%}else { %>
	<div style="position: absolute; left: 160px;">
		<a class="btn btn-outline-primary btn-lg" href="write_login">�����ϱ�</a>
	</div>
	<%} %>
	
	<br><br>
	<hr>
	<%@ include file = "footer.jsp" %>
	
	
	
	<!-- @@@@@@@@ -->
</body>
</html>