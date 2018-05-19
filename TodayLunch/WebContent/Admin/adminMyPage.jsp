<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Title here -->
<title>Admin Mypage - 오늘의 점심</title>
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
				<img class="img-responsive" src="../img/crown-white.png" alt="" />
				<!-- Heading -->
				<h2 class="white">Admin Page</h2>
				<ol class="breadcrumb">
					<li><a href="/TodayLunch/main.lunch">Home</a></li>
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

							<div class="col-md-3 col-sm-4 col-sm-offset-2">
								<!-- Shopping items -->
								<div class="shopping-item">
									<!-- Image -->
									<a href="/TodayLunch/Admin/getPeople.lunch"><img class="img-responsive"
										src="../img/shopping/mypage1.jpg" alt="" /></a>
									<!-- Shopping item name / Heading -->
									<h4 class="center">
										<a href="/TodayLunch/Admin/getPeople.lunch">유저관리</a>
									</h4>
									<!-- <span class="item-price pull-right"></span> -->
									<div class="clearfix"></div>

									<!-- Buy now button -->
									<div class="visible-xs">
										<a class="btn btn-danger btn-sm" href="/TodayLunch/Admin/getPeople">유저관리</a>
									</div>
								</div>
							</div>

							<div class="col-md-3 col-sm-4">
								<!-- Shopping items -->
								<div class="shopping-item">
									<!-- Image -->
									<a href="/TodayLunch/Admin/noticeList.lunch"><img class="img-responsive"
										src="../img/shopping/mypage3.jpg" alt="" /></a>
									<!-- Shopping item name / Heading -->
									<h4 class="center">
										<a href="Admin/noticeList.lunch">공지사항 관리</a>
									</h4>
									<!-- <span class="item-price pull-right"></span> -->
									<div class="clearfix"></div>

									<!-- Buy now button -->
									<div class="visible-xs">
										<a class="btn btn-danger btn-sm" href="Admin/noticeList.lunch">공지사항 관리</a>
									</div>
								</div>
							</div>


							<!-- Showcase End -->

							<!--식권사용-->
							<div class="col-md-3 col-sm-4">
								<!-- Shopping items -->
								<div class="shopping-item">
									<!-- Image -->
									<a href="/TodayLunch/Admin/sikInfo.lunch"><img class="img-responsive"
										src="../img/shopping/mypage5.jpg" alt="" /></a>
									<!-- Shopping item name / Heading -->
									<h4 class="center">
										<a href="Admin/sikInfo.lunch">모든 식권내역 확인</a>
									</h4>
									<!-- <span class="item-price pull-right"></span> -->
									<div class="clearfix"></div>

									<!-- Buy now button -->
									<div class="visible-xs">
										<a class="btn btn-danger btn-sm" href="Admin/sikInfo.lunch">모든 식권내역 확인</a>
									</div>
								</div>
							</div>
							
							
						</div>
					</div>
				</div>
				<!-- / Inner Page Content End -->

				<!-- Footer Start -->

				<jsp:include page="../footer.jsp"></jsp:include>

				<!-- Footer End -->

			</div>
			<!-- / Wrapper End -->
</div>

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
		
		</script>
	
</body>
</html>
<!-- <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>액션태그 연습</title>
</head>
<body>

<input type="button" value="유저 보기" onclick="location.href='getPeople.lunch'">


<input type="button" value="전체 식권 사용내역 보기" onclick="location.href='/TodayLunch/Admin/showSik.lunch'">

<input type="button" value="공지사항 수정,삭제" onclick="location.href='/TodayLunch/Admin/noticeList.lunch'">
<input type="button" value="전체 버튼?" onclick="location.href='/TodayLunch/Admin/showUser.lunch'">



</body>
</html> -->