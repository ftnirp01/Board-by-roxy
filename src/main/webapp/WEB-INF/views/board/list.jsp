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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.js"></script>

</head>
<body data-spy="scroll" data-target="#navbar" class="static-layout">

	<%MemberVO vo = (MemberVO)session.getAttribute("res");%>
	<%if (vo == null) { %>
	
	<%@include file = "header.jsp" %>
	<div id="side-nav" class="sidenav">
	<a href="javascript:void(0)" id="side-nav-close">&times;</a>
		<div class="sidenav-content">
			프로필을 확인하려면
			<a href = "login">로그인</a> ============ <a href = "join">회원가입</a>
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
		<h1>문의사항</h1>
	</div>
	<br><br>
	
	<hr>
	
	<div class = "row text-center">
		<div class = "col-md-3">
			<strong>번호</strong>
		</div>
		<div class = "col-md-3">
			<strong>제목</strong>
		</div>
		<div class = "col-md-3">
			<strong>글쓴이</strong>
		</div>
		<div class = "col-md-3">
			<strong>등록일</strong>
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
	
	
	<!-- 페이징 -->
	<div  style="text-align: center;">
		<a class = "btn" href = "list?pageNum=1&amount=5">1</a>
		<a class = "btn" href = "list?pageNum=2&amount=5">2</a>
		<a class = "btn" href = "list?pageNum=3&amount=5">3</a>
		<a class = "btn" href = "list?pageNum=4&amount=5">4</a>
	</div>
	
	<!-- 글 작성 버튼 -->
	
	<%MemberVO vo2 = (MemberVO)session.getAttribute("res");%>
	
	<%if(vo2 == null) {%>
	
	<div style="position: absolute; left: 160px;">
		<a class="btn btn-outline-primary btn-lg" href = "write">문의하기</a>
	</div>
	
	<%}else { %>
	<div style="position: absolute; left: 160px;">
		<a class="btn btn-outline-primary btn-lg" href="write_login">문의하기</a>
	</div>


	<%} %>
	
	<br><br>
	<hr>
	<%@ include file = "footer.jsp" %>
	
	
	
	<!-- @@@@@@@@ -->
</body>
</html>