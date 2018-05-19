<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!-- Title here -->
<title>식권 매출 내역 페이지</title>

<!-- Description, Keywords and Author -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<!--[if IE]><link rel="stylesheet" href="../css/ie-style.css"><![endif]-->

<!-- Favicon -->
<link rel="shortcut icon" href="#">
</head>

<body>
	<!-- Page Wrapper -->
	<div class="wrapper" style="background-color: #F2EFE9;">

		<!-- Header Start -->

		<jsp:include page="../top.jsp" />
		<!-- Header End -->

		<!-- Banner Start -->

		<div class="banner padd">
			<div class="container">
				<!-- Image -->
				<img class="img-responsive" src="../img/crown-white.png" alt="" />
				<!-- Heading -->
				<h2 class="white">식권 매출 내역</h2>
				<ol class="breadcrumb">
					<li><a href="../index.jsp">메인</a></li>
					<li><a href="myPage.lunch">마이 페이지</a></li>
					<li class="active">식권 매출 내역</li>
				</ol>
				<div class="clearfix"></div>
			</div>
		</div>

		<!-- Banner End -->



		<!-- Inner Content -->
		<div class="inner-page padd">

			<!-- Inner page menu start -->
			<div class="inner-menu">
				<div class="container">
					<!-- Heading -->
					<h3
						style="border-bottom: 4px double #6C702F; color: #513629; font-weight: bold">${r_name}의&nbsp;정보</h3>
					<!-- 식권 매출 내역이 있다면 -->
					<c:if test="${u_sikList!=null }">
						<div class="row">
							<c:forEach var="u_sik" items="${u_sikList}">
								<div class="col-md-6 col-sm-6">
									<!-- Inner page menu list -->
									<div class="menu-list">
										<!-- Menu item heading -->
										<!-- 날짜 -->
										<h3>${u_sik.key}</h3>
										<!-- Image for menu list -->
										<img class="img-responsive" src="../img/menu/menu1.jpg" alt="" />
										<!-- Menu list items -->
										<div class="menu-list-item">
											<!-- Heading / Dish name -->
											<h4 class="pull-left" style="color: #513629">식권 이용 고객</h4>
											<!-- Dish price -->
											<!-- 해당 날짜에 식당에서 사용된 식권의 개수 -->
											<span class="price pull-right" style="color: #513629">${u_sik.value}
												명</span>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
						<div class="row text-center">
							<ul class="pagination">
								<!-- 페이징 처리 -->
								<c:if test="${pgList.startPage>pgList.blockSize}">
									<li><a
										href="/TodayLunch/Mypage_r/sikInfo.lunch?pageNum=${pgList.startPage-pgList.blockSize}">«</a>
									</li>
								</c:if>

								<c:forEach var="i" begin="${pgList.startPage}"
									end="${pgList.endPage}">

									<c:if test="${i==pgList.currentPage}">
										<li class="active"><a
											href="/TodayLunch/Mypage_r/sikInfo.lunch?pageNum=${i}"> <b>${i}</b>
										</a></li>
									</c:if>

									<c:if test="${i!=pgList.currentPage}">
										<li><a
											href="/TodayLunch/Mypage_r/sikInfo.lunch?pageNum=${i}">${i}</a>
										</li>
									</c:if>

								</c:forEach>

								<c:if test="${pgList.endPage<pgList.pageCount}">
									<li><a
										href="/TodayLunch/Mypage_r/sikInfo.lunch?pageNum=${pgList.startPage+pgList.blockSize}">»</a>
									</li>
								</c:if>
							</ul>
						</div>
					</c:if>
					<!-- 식권 매출 내역이 없다면 -->
					<c:if test="${u_sikList==null }">
						<div class="row">
							<h2 class="text-center">사용된 내역이 없습니다.</h2>
						</div>
					</c:if>
				</div>
			</div>
			<!-- Inner page menu end -->

		</div>
		<!-- / Inner Page Content End -->

		<!-- Footer Start -->

		<jsp:include page="../footer.jsp" />

		<!-- Footer End -->
		<!-- Scroll to top -->
		<span class="totop"><a href="#"><i class="fa fa-angle-up"></i></a></span>

	</div>
	<!-- / Wrapper End -->




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






