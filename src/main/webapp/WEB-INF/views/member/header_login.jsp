<%@page import="com.ftnirp.board.dto.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Roxy by GetTemplates.co</title>
<meta name="description" content="Roxy">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- External CSS -->
<link rel="stylesheet" href="vendor/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="vendor/select2/select2.min.css">
<link rel="stylesheet" href="vendor/owlcarousel/owl.carousel.min.css">
<link rel="stylesheet" href="vendor/lightcase/lightcase.css">
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

<!-- Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400|Work+Sans:300,400,700"
	rel="stylesheet">

<!-- CSS -->
<link rel="stylesheet" href="css/style.min.css">
<link rel="stylesheet"
	href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">

<!-- Modernizr JS for IE8 support of HTML5 elements and media queries -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.js"></script>



</head>
<body>
	


	<nav id="header-navbar" class="navbar navbar-expand-lg py-4">
		<div class="container">
			<a class="navbar-brand d-flex align-items-center text-white" href="loginSuccess">
				<h3 class="font-weight-bolder mb-0">Ftnirp</h3>
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbar-nav-header" aria-controls="navbar-nav-header"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="lnr lnr-menu"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbar-nav-header">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item">
							<a class="nav-link" href="loginSuccess" >Home</a></li>
					<li class="nav-item">
							<a class="nav-link" href="list?pageNum=1&amount=5" >Board</a>
					</li>
					<li class="nav-item">
							<a class="nav-link" href="shop" >Shop</a>
					</li>
					<li class="nav-item">
							<a class="nav-link" href="nft" >NFT</a>
					</li>
					<li class="nav-item">
							<a class="nav-link" href="cart" >Cart</a>
					</li>
					   <li class="nav-item">
                    		<a class="nav-link" href="logout">Logout</a>
                	</li>
					<li class="nav-item"><a id="side-search-open" class="nav-link"
						href="#"> <span class="lnr lnr-magnifier" ></span>
					</a></li>
					<li class="nav-item only-desktop"><a class="nav-link"
						id="side-nav-open" href="#" > <span class="lnr lnr-menu"></span>
					</a></li>
				</ul>
			</div>
		</div>
	</nav>



</body>
</html>