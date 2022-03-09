<%@page import="com.ftnirp.board.dto.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
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






<meta charset="EUC-KR">
<title>F.com</title>
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
  
  
  	
    		
  
  
    <h1 class="display-1 mb-4">Welcome</h1>
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
</div>	


<!-- Features Section-->



<section id="who-we-are" class="bg-white">
    <div class="container">
        <div class="section-content">
            <div class="title-wrap" data-aos="fade-up">
                <h2 class="section-title">The strength <br><b>of F.shop</b></h2>
            </div>
            
            <div class="row text-center">
                <div class="col-md-4 col-sm-6" data-aos="fade-up">
                    <img class="rounded-circle" src="img/icons/animat-checkmark.gif" alt="Generic placeholder image" width="140" height="140">
                    <h5 class="mb-4">�����ϰ� Ŭ���ؿ�</h5>
                    <p>F.shop�� ����ڿ��� ������ UI�� �����ϱ� ���ؼ� ���� �Ǿ����ϴ�.</p>
                </div>
                <!-- /.col-md-4 col-sm-6  -->
                <div class="col-md-4 col-sm-6" data-aos="fade-up" data-aos-delay="200">
                    <img class="rounded-circle" src="img/icons/animat-customize.gif" alt="Generic placeholder image" width="140" height="140">
                    <h5 class="mb-4">�����Ȳ üũ�� ������</h5>
                    <p>F.shop�� ����ڸ� ���� ��� �����Ȳ�� <br> �����ϰ� ���� �˴ϴ�.</p>
                </div>
                <!-- /.col-md-4 col-sm-6  -->
                <div class="col-md-4 col-sm-6" data-aos="fade-up" data-aos-delay="400">
                    <img class="rounded-circle" src="img/icons/animat-responsive.gif" alt="Generic placeholder image" width="140" height="140">
                    <h5 class="mb-4">��� ����̽����� ��밡���ؿ�</h5>
                    <p>F.shop�� ���� ��𼭳� ����� �� �ְ� <br> ���� �Ǿ����ϴ�.</p>
                </div>
                <!-- /.col-md-4 col-sm-6  -->
            </div>
            <!-- /.row -->
        </div>
    </div>
    	
    	<hr>
    	<br>
    		<div style="text-align: center;">
                	<h2 class="section-title">������</h2>
    		</div>
    	<br>
    	
    
</section>	<section id="skills" class="bg-white">
    <div class="container">
        <div class="section-content pt-0">
            
            <div class="row">
                <div class="col-md-6" data-aos="fade-right">
                    <!-- Skill Item -->
                    <div class="skill-item">
                        <div class="d-flex justify-content-between">
                             <p>��ǰ�� ����Ƽ</p>
                            <p class="text-muted">90%</p>
                        </div>
                        <div class="progress" data-percent="90%">
                            <div class="progress-bar" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 0"></div>
                        </div>
                    </div>
                    <!-- End Skill Item -->
                    <!-- Skill Item -->
                    <div class="skill-item">
                        <div class="d-flex justify-content-between">
                            <p>����</p>
                            <p class="text-muted">85%</p>
                        </div>
                         <div class="progress" data-percent="85%">
                            <div class="progress-bar" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 0"></div>
                        </div>
                    </div>
                    <!-- End Skill Item -->
                    <!-- Skill Item -->
                    <div class="skill-item">
                        <div class="d-flex justify-content-between">
                            <p>����</p>
                            <p class="text-muted">73%</p>
                        </div>
                         <div class="progress" data-percent="73%">
                            <div class="progress-bar" role="progressbar" aria-valuenow="73" aria-valuemin="0" aria-valuemax="100" style="width: 0"></div>
                        </div>
                    </div>
                    <!-- End Skill Item -->
                </div>
                <div class="col-md-6" data-aos="fade-left">
                    <!-- Skill Item -->
                    <div class="skill-item">
                        <div class="d-flex justify-content-between">
                            <p>��ǰ�� �ż���</p>
                            <p class="text-muted">80%</p>
                        </div>
                         <div class="progress" data-percent="80%">
                            <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 0"></div>
                        </div>
                    </div>
                    <!-- End Skill Item -->
                    <!-- Skill Item -->
                    <div class="skill-item">
                        <div class="d-flex justify-content-between">
                            <p>��۱Ⱓ</p>
                            <p class="text-muted">60%</p>
                        </div>
                         <div class="progress" data-percent="60%">
                            <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 0"></div>
                        </div>
                    </div>
                    <!-- End Skill Item -->
                    <!-- Skill Item -->
                    <div class="skill-item">
                        <div class="d-flex justify-content-between">
                            <p>���� �亯</p>
                            <p class="text-muted">55%</p>
                        </div>
                         <div class="progress" data-percent="55%">
                            <div class="progress-bar" role="progressbar" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100" style="width: 0"></div>
                        </div>
                    </div>
                    <!-- End Skill Item -->
                </div>
            </div>
        </div>
    </div>
</section>	<!-- Features Section-->
<section id="cta" class="bg-fixed overlay" style="background-image: url(img/bg.jpg);">
    <div class="container">
        <div class="section-content" data-aos="fade-up">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h2 class="mb-2">Make a beautiful Shop , or million of them</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, veritatis qui eligendi delectus quia fuga!</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End of Features Section-->
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
</footer>


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
	

</body>
</html>