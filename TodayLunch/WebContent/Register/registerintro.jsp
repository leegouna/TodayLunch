<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
	<!-- Title here -->
<title>Online Shopping - CakeFactory</title>
<!-- Description, Keywords and Author -->
<meta name="description" content="Your description">
<meta name="keywords" content="Your,Keywords">
<meta name="author" content="ResponsiveWebInc">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Styles -->
	<!-- Bootstrap CSS -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
	<!-- Portfolio CSS -->
<link href="../css/prettyPhoto.css" rel="stylesheet">
	<!-- Font awesome CSS -->
<link href="../css/font-awesome.min.css" rel="stylesheet">
	<!-- Custom Less -->
<link href="../css/less-style.css" rel="stylesheet">
	<!-- Custom CSS -->
<link href="../css/style.css" rel="stylesheet">
	<!--[if IE]><link rel="stylesheet" href="css/ie-style.css"><![endif]-->

	<!-- Favicon -->
<link rel="shortcut icon" href="#">
</head>

<body>

	<!-- Page Wrapper -->
	<div class="wrapper">

		<!-- Header Start -->
		<jsp:include page="../top.jsp"></jsp:include>


		<!-- Header End -->

		<!-- Banner Start -->

		<div class="banner padd">
			<div class="container">
				<!-- Image -->
				<img class="img-responsive" src="../img/crown-white.png" alt="">
					<!-- Heading -->
				<h2 class="white">회원가입</h2>
				<ol class="breadcrumb">
						<li><a href='/TodayLunch/main.lunch'>Home</a></li>
						<li><a href="./register.lunch">개인 회원가입</a></li>
						<li><a href="./register2.lunch">식당 회원가입</a></li>
				</ol>
				<div class="clearfix"></div>
			</div>
		</div>

		<!-- Banner End -->
		<!-- Inner Content -->
		<div class="inner-page padd">

			<!-- Shopping Start -->

			<div class="shopping">
				<div class="container">
					<!-- Shopping items content -->
					<div class="shopping-content">
						<div class="row">
							<div class="col-md-offset-3 col-md-3 col-sm-6">
								<!-- Shopping items -->
								<!-- 1)개인 회원가입 선택  -->
								<div class="shopping-item">
									<!-- Image -->
									<a href="/TodayLunch/Register/register.lunch">
									
									<img class="img-responsive" src="../img/register/person2.png" alt=""></a>
									<!-- Shopping item name / Heading -->
									<h4 class="pull-left">
										<a href="/TodayLunch/Register/register.lunch">개인 회원가입</a>
									</h4>
									<span class="item-price pull-right">Click</span>
									<div class="clearfix"></div>
									<!-- Paragraph -->
									<p>개인</p>
									<!-- Buy now button -->
									<!--<div class="visible-xs">
										<a class="btn btn-danger btn-sm" href="#">Buy Now</a>
									</div> -->
									<!-- Shopping item hover block & link -->
									<div class="item-hover br-red hidden-xs"></div>
									<a class="link hidden-xs"
										href="/TodayLunch/Register/register.lunch">Person</a>
									
									<!-- Hot tag -->
									<!-- <span class="hot-tag br-red">Hot</span> -->
								</div>
							</div>

							<!--  2)식당 회원가입 선택 -->
							<div class="col-md-3 col-sm-6">
								<!-- Shopping items -->
								<div class="shopping-item">
									<!-- Image -->
									<a href="/TodayLunch/Register/register2.lunch">
									<img class="img-responsive" src="../img/register/rest1.jpg" alt=""></a>
									<!-- Shopping item name / Heading -->
									<h4 class="pull-left">
										<a href="/TodayLunch/Register/register2.lunch">식당 회원가입</a>
									</h4>
									<span class="item-price pull-right">Click</span>
									<div class="clearfix"></div>
									<!-- Paragraph -->
									<p>식당</p>
									<!-- Buy now button -->
									<!-- <div class="visible-xs">
										<a class="btn btn-danger btn-sm" href="#">Buy Now</a>
									</div> -->
									<!-- Shopping item hover block & link -->
									<div class="item-hover br-red hidden-xs"></div>
									<a class="link hidden-xs"
										href="/TodayLunch/Register/register2.lunch">Restaurant</a>
								</div>
							</div>
						</div>

						<!-- Pagination end-->
					</div>
				</div>
			</div>

			<!-- Shopping End -->

			<!-- Showcase Start -->

			<!-- Showcase End -->

		</div>
		<!-- / Inner Page Content End -->

		<!-- Footer Start -->

		<jsp:include page="../footer.jsp"></jsp:include>

		<!-- Footer End -->

	</div>
	<!-- / Wrapper End -->


	<!-- Scroll to top -->
	<span class="totop" style="display: block;"><a href="#"><i
			class="fa fa-angle-up"></i></a></span>



	<!-- Javascript files -->
	<!-- jQuery -->
	<script src="../js/jquery.js"></script>
	<!-- Bootstrap JS -->
	<script src="../js/bootstrap.min.js"></script>
	<!-- Pretty Photo JS -->
	<script src="../js/jquery.prettyPhoto.js"></script>
	<!-- Respond JS for IE8 -->
	<script src="../js/respond.min.js"></script>
	<!-- HTML5 Support for IE -->
	<script src="../js/html5shiv.js"></script>
	<!-- Custom JS -->
	<script src="../js/custom.js"></script>
	<!-- JS code for this page -->
	<script>
		
		</script>

</body>
</html>









<!--원래소스코드  -->
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>개인/식당</title>
</head>
<body bgcolor="#FFCDD2">

<center>
<input type="button" value="개인" onclick="location.href='/TodayLunch/register/register.lunch'">
<input type="button" value="식당" onclick="location.href='/TodayLunch/register/register2.lunch'">
	</tr>
	</from>
  </center>
</form>
</body>

</html> -->