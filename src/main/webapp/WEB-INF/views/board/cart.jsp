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
<body data-spy="scroll" data-target="#navbar-nav-header" class="static-layout">
	<div class="boxed-page">
		

<%MemberVO vo = (MemberVO)session.getAttribute("res");%>
	<%if (vo == null) { %>
	
	<%@include file = "header.jsp" %>
	
	<%} else { %>
	
	<%}%> <%@include file = "header_login.jsp" %>

		
		
</div>


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
	
</div>		<div class="jumbotron jumbotron-single d-flex align-items-center" style="background-image: url(img/bg.jpg)">
  <div class="container text-center">
    <h1 class="display-2 mb-4">Cart</h1>
  </div>
</div>		<!-- Contact Form Section -->


<br>


<!-- Cart  -->

<h3 class="section-title" style="text-align: left;"><b>Cart</b></h3>

				<hr>
					<div>
                        <div style="text-align: center;">
                            <table summary="��ȣ, ����, ��ǰ��, ����, ����, ����, ��ۺ�, ���">
                                <colgroup>
                                    <col width="180" />
                                    <col width="195" />
                                    <col width="*" />
                                    <col width="220" />
                                    <col width="200" />
                                    <col width="210" />
                                    <col width="200" />
                                    <col width="200" />
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th scope="col"><div class="tb-center">��ȣ</div></th>
                                        <th scope="col"><div class="tb-center">����</div></th>
                                        <th scope="col"><div class="tb-center">��ǰ��</div></th>
                                        <th scope="col"><div class="tb-center">����</div></th>
                                        <th scope="col"><div class="tb-center">����</div></th>
                                        <th scope="col"><div class="tb-center">�ݾ�</div></th>
                                        <th scope="col"><div class="tb-center">��ۺ�</div></th>
                                        <th scope="col"><div class="tb-center">���</div></th>
                                    </tr>
                                </thead>
                                <tbody>
                               </tbody>
                            </table>
                        </div><!-- .table-fill-prd -->
                        
                        <hr>

						<div style="text-align: center;">��ٱ��Ͽ� ��� ��ǰ�� �����ϴ�.</div>
						<hr>                        
                        
                        <div style="text-align: center;">
                            <a href="javascript:alert('�ֹ��� ������ �ݾ��� �ƴմϴ�.�������Ϳ� ���� �ٶ��ϴ�.')" class="btn btn-outline-primary btn-lg">�ֹ��ϱ�</a>
                            <a href="/shop.html" class="btn btn-outline-primary btn-lg">��� �����ϱ�</a>
                            <a href="javascript:basket_clear();" class="btn btn-outline-primary btn-lg">��ٱ��� ����</a>
                            <a href="javascript:basket_estimate()" class="btn btn-outline-primary btn-lg">������ ���</a>
                        </div>
		<hr>
		
<!-- Cart-End -->


<section id="contact-form" class="bg-white">
    <div class="container">
        <div class="section-content">
            <!-- Section Title -->
            <div class="title-wrap" data-aos="fade-up">
                <h2 class="section-title">Feedback</h2>
                <p class="section-sub-title">���� ������ ȯ���Դϴ� !</p>
            </div>
            <!-- End of Section Title -->
            <div class="row">
                <!-- FeedBack Form Holder -->
                <div class="col-md-8 offset-md-2 contact-form-holder mt-4" data-aos="fade-up">
                    <form method="post" name="contact-us" action="">
                        <div class="row">
                            <div class="col-md-12 form-group">
                                <input type="text" class="form-control" id="name" name="name" placeholder="Name">
                            </div>
                            <div class="col-md-6 form-group">
                                <input type="text" class="form-control" id="email" name="email" placeholder="Email">
                            </div>
                            <div class="col-md-6 form-group">
                                <input type="number" class="form-control" id="phoneNumber" name="phoneNumber" placeholder="Phone">
                            </div>
                            <div class="col-md-12 form-group">
                                <input type="text" class="form-control" id="websiteUrl" name="websiteUrl" placeholder="Website">
                            </div>
                            <div class="col-md-12 form-group">
                                <textarea class="form-control" id="message" name="message" rows="6" placeholder="Your Message ..."></textarea>
                            </div>
                            <div class="col-md-12 text-center">
                                <button class="btn btn-primary btn-shadow btn-lg" type="submit" name="submit">Send Message</button>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- End of Contact Form Holder -->
            </div>
        </div>
        <div class="section-content pt-0">
            <div class="title-wrap" data-aos="fade-up">
                <h2 class="section-title">Where To Find Us?</h2>
            </div>
            <div class="row text-center mt-4">
                <div class="col-md-3" data-aos="fade-up">
                    <span class="lnr lnr-location fs-40 py-4 d-block"></span>
                    <h5>LOCATION</h5>
                    <p>Korea</p>
                </div>
                <div class="col-md-3" data-aos="fade-up" data-aos-delay="200">
                    <span class="lnr lnr-clock fs-40 py-4 d-block"></span>
                    <h5>WORKING TIME</h5>
                    <p>Monday - Saturday</p>
                </div>
                <div class="col-md-3" data-aos="fade-up" data-aos-delay="400">
                    <span class="lnr lnr-phone fs-40 py-4 d-block"></span>
                    <h5>CALL US</h5>
                    <p>+82 10-4555-1009</p>
                </div>
                <div class="col-md-3" data-aos="fade-up" data-aos-delay="600">
                    <span class="lnr lnr-phone fs-40 py-4 d-block"></span>
                    <h5>EMAIL</h5>
                    <p>ftnirp@naver.com</p>
                </div>

            </div>
        </div>
    </div>
</section>
<!-- End of Contact Form Section -->		<!-- Features Section-->
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
<!-- End of Features Section-->		<footer class="mastfoot my-3">
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
</footer>	</div>
	
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