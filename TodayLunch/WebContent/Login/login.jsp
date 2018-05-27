<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 페이지입니다.</title>
<!-- Styles -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="icon" type="image/png" href="../images_l/icons/favicon.ico" />

<!-- 	<link rel="stylesheet" type="text/css" href="../vendor_l/bootstrap/css/bootstrap.min.css">
===============================================================================================
	<link rel="stylesheet" type="text/css" href="../fonts_l/font-awesome-4.7.0/css/font-awesome.min.css"> -->

<link rel="stylesheet" type="text/css"
	href="../fonts_l/iconic/css/material-design-iconic-font.min.css">

<link rel="stylesheet" type="text/css"
	href="../vendor_l/animate/animate.css">

<link rel="stylesheet" type="text/css"
	href="../vendor_l/css-hamburgers/hamburgers.min.css">

<link rel="stylesheet" type="text/css"
	href="../vendor_l/animsition/css/animsition.min.css">

<link rel="stylesheet" type="text/css"
	href="../vendor_l/select2/select2.min.css">

<link rel="stylesheet" type="text/css"
	href="../vendor_l/daterangepicker/daterangepicker.css">

<link rel="stylesheet" type="text/css" href="../css_l/util.css">
<link rel="stylesheet" type="text/css" href="../css_l/main.css">
<!--=================================================-->
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

<!--TOP-->
	<jsp:include page="../top.jsp"/>
	

		<!-- Banner Start -->
		<div class="wrapper" style="background-color:#F2EFE9;">
		<div class="banner padd">
			<div class="container">
				 <img class="img-responsive" src="../img/crown-white.png"
					alt="" /> 
				<h2 class="white">LOGIN</h2>
				<ol class="breadcrumb">
					<li><a href="/TodayLunch/main.lunch">Home</a></li>
				</ol>
				<div class="clearfix"></div>
			</div>
		</div>
		<!-- Banner End -->
		<!--inner-->
		<div class="inner-page padd">
			
				<c:if test="${p_id==null}">
					<div class="limiter">
						<div class="container-login100">
							<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
								<form class="login100-form validate-form" id="lo_form"
									method="post" action="/TodayLunch/Login/loginPro.lunch">
									<span class="login100-form-title p-b-49"> Login </span>
									<div class="wrap-input100 validate-input m-b-23"
										data-validate="Username is reauired">
										<span class="label-input100">UserID</span> 
										<input class="input100" type="text" name="p_id"
											placeholder="Type your username"> 
											<span class="focus-input100" data-symbol="&#xf206;"></span>
									</div>

									<div class="wrap-input100 validate-input"
										data-validate="Password is required">
										<span class="label-input100">Password</span> <input
											class="input100" type="password" name="p_passwd"
											placeholder="Type your password"> <span
											class="focus-input100" data-symbol="&#xf190;"></span>
									</div>

									<div class="text-right p-t-8 p-b-31">
										<a href="#" onclick="forget()"> Forgot password? </a>
									</div>

									<div class="container-login100-form-btn">
										<div class="wrap-login100-form-btn">
											<div class="login100-form-bgbtn"></div>
											<button class="login100-form-btn" id="lo_btn">Login</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</c:if>
		
		</div>
		<!--footer-->
		<jsp:include page="../footer.jsp"></jsp:include>

	</div>
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
	<!--다른 스크립트-->
	<script src="../vendor_l/animsition/js/animsition.min.js"></script>

	<script src="../vendor_l/bootstrap/js/popper.js"></script>
	<script src="../vendor_l/bootstrap/js/bootstrap.min.js"></script>

	<script src="../vendor_l/select2/select2.min.js"></script>

	<script src="../vendor_l/daterangepicker/moment.min.js"></script>
	<script src="../vendor_l/daterangepicker/daterangepicker.js"></script>

	<script src="../vendor_l/countdowntime/countdowntime.js"></script>

	<!-- <script src="../js_l/main.js"></script> -->
<script>
function forget(){
	
	window.open("forget_Info.jsp", "post", "left=400,top=220, width=300, height=300",
			"toobar=no,menubar=no,status=yes,scrollbars=no");
	}
</script>
</body>
</html>