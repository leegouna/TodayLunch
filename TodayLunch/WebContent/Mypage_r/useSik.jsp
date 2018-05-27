<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<!-- Title here -->
<title>식권 사용 - 오늘의 점심</title>
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

		<jsp:include page="../top.jsp" />

		<!-- Header End -->

		<!-- Banner Start -->

		<div class="banner padd">
			<div class="container">
				<!-- Image -->
				<img class="img-responsive" src="../img/crown-white.png" alt="" />
				<!-- Heading -->
				<h2 class="white">식권 사용</h2>
				<ol class="breadcrumb">
					<li><a href="/TodayLunch/index.jsp">메인</a></li>
					<li><a href="myPage.lunch">마이 페이지</a></li>
					<li class="active">식권 사용</li>
				</ol>
				<div class="clearfix"></div>
			</div>
		</div>

		<!-- Banner End -->



		<!-- Inner Content -->
		<div class="inner-page padd">

			<!-- Contact Us Start -->

			<div class="contactus">
				<div class="container">
					<div class="row">
						<div class="col-md-5 col-md-offset-1 col-sm-5 col-sm-offset-1 col-xs-12">
							<!-- Contact form -->
							<div class="contact-form">
								<!-- Heading -->
								<h3 style="color: #513629; font-weight: bold">식권 사용</h3>
								<!-- Form -->
								<!-- <form role="form" method="post"
									action="/TodayLunch/Mypage_r/sikResult.lunch"> -->
								<form role="form" method="post">
									<!-- <div class="form-group">
										Form input
										<input class="form-control" name="r_name" type="text"
											placeholder="세션값 - 식당아이디" />
									</div> -->
									<div class="form-group">
										<!-- Form input -->
										<input class="form-control" name="p_id" type="text"
											placeholder="개인아이디" style="margin-top: 10px;" />
									</div>
									<div class="form-group">
										<!-- Form input -->
										<input class="form-control" name="p_siknum" type="password"
											placeholder="식권인증번호" style="margin-top: 10px; color: #513629" />
									</div>
									<!-- Form button -->
									<button class="btn btn-sm" type="submit"
										style="margin-top: 20px; background-color: #E7C1BA">사용하기</button>
									&nbsp;
									<button class="btn btn-default btn-sm" type="reset"
										style="margin-top: 20px; background-color: #6C702F; color: #fff">지우기</button>
								</form>
							</div>
							<!--/ Contact form end -->
						</div>
						
						<div id="plate" class="col-md-5 col-sm-5 col-xs-12">
						<img class="img-responsive" src="../img/jonathan-pielmayer-388602-unsplash - 복사본.jpg" alt=""
							 />
							
							<!-- Photo by Jonathan Pielmayer on Unsplash -->
							<!-- Map holder -->
							<!-- <div class="map-container" style="height:250px;width:300px;top:-100px;z-index:3"> -->
								<!-- 식권 사용 결과 출력 -->
								<c:if test="${usesik!=null}">
									<h4 class="text-center" style="color:#ffffff;">${usesik}:)</h4>
									
								</c:if>
							<!-- </div> -->
						</div>
					</div>
				</div>
			</div>

			<!-- Contact Us End -->

			<!-- Showcase Start -->



			<!-- Showcase End -->

		</div>
		<!-- / Inner Page Content End -->

		<!-- Footer Start -->

		<jsp:include page="../footer.jsp" />

		<!-- Footer End -->

	</div>
	<!-- / Wrapper End -->


	<!-- Scroll to top -->
	<span class="totop"><a href="#"><i class="fa fa-angle-up"></i></a></span>

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
	$(window).load(function() {
		replaceFont();
		})
	
	$(window).resize(function(){
		replaceFont();
	}).resize(); 
	
	function replaceFont(){
		$('#plate>h4').css('margin-top', -1*$('#plate>img').height()/2-$('#plate>h4').height()/2);
	}
	</script>
</body>
</html>

