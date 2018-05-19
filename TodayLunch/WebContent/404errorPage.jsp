<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>존재하지 않는 페이지입니다. - 오늘의 점심</title>
<meta name="description" content="Your description">
<meta name="keywords" content="Your,Keywords">
<meta name="author" content="ResponsiveWebInc">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Styles -->
<!-- Bootstrap CSS -->
<link href="/TodayLunch/css/bootstrap.min.css" rel="stylesheet">
<!-- Portfolio CSS -->
<link href="/TodayLunch/css/prettyPhoto.css" rel="stylesheet">
<!-- Font awesome CSS -->
<link href="/TodayLunch/css/font-awesome.min.css" rel="stylesheet">
<!-- Custom Less -->
<link href="/TodayLunch/css/less-style.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="/TodayLunch/css/style.css" rel="stylesheet">
<!--[if IE]><link rel="stylesheet" href="css/ie-style.css"><![endif]-->

<!-- Favicon -->
<link rel="shortcut icon" href="#">
</head>
<body>
	<!-- Page Wrapper -->
	<div class="wrapper">

		<!-- Header Start -->
	<jsp:include page="top.jsp"/>

		<!-- Header End -->

		<!-- Banner Start -->

		<div class="banner padd">
			<div class="container">
				<!-- Image -->
				<img class="img-responsive" src="/TodayLunch/img/crown-white.png" alt="" />
				<!-- Heading -->
				<h2 class="white">ERROR</h2>
				<ol class="breadcrumb">
					<li><a href="index.jsp">메인</a></li>
					<li class="active">오류 페이지</li>
				</ol>
				<div class="clearfix"></div>
			</div>
		</div>

		<!-- Banner End -->



		<!-- Inner Content -->
		<div class="inner-page padd">

			<!-- Showcase Start -->

			<div class="showcase">
				<div class="container">
					<div class="row">
						<div class="col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2">
							<!-- Showcase section item -->
							<div class="showcase-item">
								<!-- Image -->
								<img class="img-responsive" src="/TodayLunch/img/error.png" alt="" />
								<!-- Heading -->
								<h3>
									<strong>존재하지 않는 페이지입니다.</strong>
								</h3>
								<!-- Paragraph -->
								<p>식당 소개 페이지의 경우, 탈퇴한 식당 회원입니다.
								아닐 경우 해당 작업과 페이지를 말씀해주시면 신속히 처리하도록 하겠습니다. 감사합니다.</p>
								<p class="pull-right">
									<button type="button" class="btn btn-danger"  
									onclick="history.back()">뒤로</button>
								</p>
								
								<div class="clearfix"></div>
							</div>
						</div>
						
					</div>
				</div>
			</div>

			<!-- Showcase End -->

		</div>
		<!-- / Inner Page Content End -->
		<jsp:include page="footer.jsp"/>
		<!-- Javascript files -->
		<!-- jQuery -->
		<script src="/TodayLunch/js/jquery.js"></script>
		<!-- Bootstrap JS -->
		<script src="/TodayLunch/js/bootstrap.min.js"></script>
		<!-- Pretty Photo JS -->
		<script src="/TodayLunch/js/jquery.prettyPhoto.js"></script>
		<!-- Respond JS for IE8 -->
		<script src="/TodayLunch/js/respond.min.js"></script>
		<!-- HTML5 Support for IE -->
		<script src="/TodayLunch/js/html5shiv.js"></script>
		<!-- Custom JS -->
		<script src="/TodayLunch/js/custom.js"></script>
		<!-- JS code for this page -->
		<script>
			
		</script>
</body>
</html>