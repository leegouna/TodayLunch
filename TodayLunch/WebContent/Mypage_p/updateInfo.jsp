<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>정보수정</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Styles -->
<!-- Bootstrap CSS -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<!-- FlexSlider Css -->
<link rel="stylesheet" href="../css/flexslider.css" media="screen" />
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
	<div class="wrapper">
		<!--top-->
		<jsp:include page="../top.jsp"></jsp:include>

		<!-- Banner Start -->
		<div class="banner padd">
			<div class="container">
				<!-- Image -->
				<img class="img-responsive" src="../img/crown-white.png" alt="" />
				<!-- Heading -->
				<h2 class="white">회원 정보 수정</h2>
				<ol class="breadcrumb">
					<li><a href="../index.jsp">Home</a></li>
				</ol>
				<div class="clearfix"></div>
			</div>
		</div>
		<!-- Banner End -->
		<!-- Inner Content -->
		<div class="inner-page padd">
			<div class="booking">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<!-- Image Slider -->
							<div id="carousel-example-generic" class="carousel slide"
								data-ride="carousel">
								<!-- Wrapper for slides -->
								<div class="carousel-inner">
									<div class="item active">
										<img class="img-responsive" src="../img/booking/booking1.jpg"
											alt="" />
									</div>
									<div class="item">
										<img class="img-responsive" src="../img/booking/booking2.jpg"
											alt="" />
									</div>
									<div class="item">
										<img class="img-responsive" src="../img/booking/booking3.jpg"
											alt="" />
									</div>
								</div>
								<!-- Controls -->
								<a class="left carousel-control"
									href="#carousel-example-generic" data-slide="prev"> <span
									class="fa fa-chevron-left"></span>
								</a> <a class="right carousel-control"
									href="#carousel-example-generic" data-slide="next"> <span
									class="fa fa-chevron-right"></span>
								</a>
							</div>
						</div>
						<!--image end-->
						<div class="col-md-6">
							<!-- Booking form area -->
							<div class="booking-form">
								<!-- Heading -->
								<h3>회원수정</h3>
								<!-- Booking form -->
								<form role="form" name="updateform" method="post"
									action="/TodayLunch/Mypage_p/updateInfoPro.lunch">
									<!-- Form label -->
									<label style="color:#513629">ID</label>
									<div class="form-group">
										<!-- Form input -->
										<input class="form-control" type="text" value="${mdto.p_id}"
											disabled /> <input type="hidden" name="p_id"
											value="${mdto.p_id}">
									</div>
									<!-- Form label -->
									<label style="color:#513629">PASSWORD</label>
									<div class="form-group">
										<!-- Form input -->
										<input class="form-control" type="password" name="p_passwd"
											size="15" value="${mdto.p_passwd}" />
									</div>
									<!-- Form label -->
									<label style="color:#513629">NAME</label>
									<div class="form-group">
										<!-- Form input -->
										<input class="form-control" type="text" name="p_name"
											size="15" value="${mdto.p_name}" />
									</div>
									<!-- Form label -->
									<label style="color:#513629">EMAIL</label>
									<div class="form-group">
										<!-- Form input -->
										<input class="form-control" type="text" name="p_email"
											size="15" value="${mdto.p_email}" />
									</div>
									<!-- Form label -->
									<label style="color:#513629">TICKET CONFIRM NUMBER</label>
									<div class="form-group">
										<!-- Form text area -->
										<input class="form-control" type="password" name="p_siknum"
											size="10" value="${mdto.p_siknum}" />
									</div>
									<!-- Form button -->
									<button class="btn btn-sm" type="submit" style="background-color:#ccccff ;border-radius:20px;color:#513629;">COMPLETE</button>
									&nbsp;
									<button class="btn btn-sm" type="button" 
									style="background-color:#E7C1BA;border-radius:20px;color:#513629"
										onclick="history.back()">BACK</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Booking End -->
		</div>
		<!--inner end-->
		<!--footer-->
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
	<!--wrapper end-->
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

</body>
</html>






