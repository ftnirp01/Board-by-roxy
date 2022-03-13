<%@page import="com.ftnirp.board.dto.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

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







<title>F.com</title>
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
	
</div>	
	

<div id="side-nav" class="sidenav">
	<a href="javascript:void(0)" id="side-nav-close">&times;</a>
	
	<div class="sidenav-content">
		<p>
			Kuncen WB1, Wirobrajan 10010, DIY
		</p>
		<p>
			<span class="fs-16 primary-color">(+68) 120034509</span>
		</p>
		<p>info@yourdomain.com</p>
	</div>
</div><div id="side-search" class="sidenav">
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
	
</div>	<div class="jumbotron jumbotron-single d-flex align-items-center" style="background-image: url(img/bg.jpg)">
  <div class="container text-center">
    <h1 class="display-2 mb-4">Shop</h1>
  </div>
</div>	

<br><br><br><br>	

<!-- shop 공간 -->

<h2 class="section-title">Hot <b>Product</b></h2>

<br><br><br>

<div class = "row">
                  	<div class="col-md">
                        <div class="hover-outer-box" style="margin-left: 5px;" data-aos="fade-up" data-aos-delay="0">
                            <img src="img/pants.jpg" >
                            <div class="hover-inner-box">
                                <div class="hover-content">
                                    <h3>PANTS</h3>
                                    <p>Modern Pants <br>
                                       69,000  won</p>
                                     <br>  <a href = "javascript:alert('준비중입니다..')"><h3>Buy</h3></a>
                                </div>
                            </div>
                        </div>
                    </div>
                
                      <div class="col-md">
                        <div class="hover-outer-box" data-aos="fade-up" data-aos-delay="200">
                            <img src="img/pants2.jpg">
                            <div class="hover-inner-box">
                                <div class="hover-content">
                                    <h3>PANTS</h3>
                                    <p>Simple Pants <br>
                                       59,000  won</p>
                                       <br>  <a href = "javascript:alert('준비중입니다.')"><h3>Buy</h3></a>
                                </div>
                            </div>
                        </div>
                    </div>   
                
                      <div class="col-md">
                        <div class="hover-outer-box" style="width: 475px;" data-aos="fade-up" data-aos-delay="400">
                            <img src="img/socks.jpg">
                            <div class="hover-inner-box">
                                <div class="hover-content">
                                    <h3>Socks</h3>
                                    <p>Red&Blue Socks <br>
                                       29,000  won</p>
                                       <br>  <a href = "javascript:alert('준비중입니다.')"><h3>Buy</h3></a>
                                </div>
                            </div>
                        </div>
                    </div>

</div>

<div class = "row">

           <div class="col-md" style="position: absolute; width: 550px;height: 400px; top: 1300px;">
                        <div class="hover-outer-box" style="width: 500px; height: 400px; margin-left: 5px;" data-aos="fade-up" data-aos-delay="500">
                            <img src="img/jean.jpg" >
                            <div class="hover-inner-box">
                                <div class="hover-content">
                                    <h3>PANTS</h3>
                                    <p>Woman Jean <br>
                                       49,000  won</p>
                                       <br>  <a href = "javascript:alert('준비중입니다.')"><h3>Buy</h3></a>
                                </div>
                            </div>
                        </div>
                    </div>      
                    
                    <div class="col-md" style="position: absolute; width: 500px; height: 400px; top: 1360px; left: 1020px;">
                        <div class="hover-outer-box" data-aos="fade-up" data-aos-delay="700">
                            <img src="img/belt.jpg" height="400px;" width="600px;">
                            <div class="hover-inner-box">
                                <div class="hover-content">
                                    <h3>BELT</h3>
                                    <p>Classic Belt <br>
                                       45,000  won</p>
                                       <br>  <a href = "javascript:alert('준비중입니다.')"><h3>Buy</h3></a>
                                </div>
                            </div>
                        </div>
                    </div>
             
</div>

<!-- shop 공간 -->

<br><br><br><br><br><br><br><br>	

<footer class="mastfoot my-3">
    <div class="inner container">
         <div class="row">
         	<div class="col-lg-4 col-md-12 d-flex align-items-center">
         		
         	</div>
         	<div class="col-lg-4 col-md-12 d-flex align-items-center">
         		<p class="mx-auto text-center mb-0">&copy; 2019 Roxy. Design by <a href="https://gettemplates.co" target="_blank">GetTemplates</a>.</p>
         	</div>
           
            <div class="col-lg-4 col-md-12">
            	<nav class="nav nav-mastfoot justify-content-center">
	                <a class="nav-link" href="#">
	                	<i class="fab fa-facebook-f"></i>
	                </a>
	                <a class="nav-link" href="#">
	                	<i class="fab fa-twitter"></i>
	                </a>
	                <a class="nav-link" href="#">
	                	<i class="fab fa-instagram"></i>
	                </a>
	                <a class="nav-link" href="#">
	                	<i class="fab fa-linkedin"></i>
	                </a>
	                <a class="nav-link" href="#">
	                	<i class="fab fa-youtube"></i>
	                </a>
	            </nav>
            </div>
            
        </div>
    </div>
</footer>	<!-- External JS -->
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
</body>
</html>