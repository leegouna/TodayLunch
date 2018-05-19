<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>즐겨찾기 - 오늘의 점심</title>
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
<!--[if IE]><link rel="stylesheet" href="../css/ie-style.css"><![endif]-->

<!-- Favicon -->
<link rel="shortcut icon" href="#">
<style>
.flex-container {
	display: flex;
	flex-wrap: wrap;
}

.dishes .img-frame {
	cursor: Auto;
}

.menu-head{
	cursor:pointer;
}
</style>
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
				<h2 class="white">즐겨찾기</h2>
				<ol class="breadcrumb">
					<li><a href="/TodayLunch/main.lunch">메인</a></li>
					<li class="active">즐겨찾기</li>
				</ol>
				<div class="clearfix"></div>
			</div>
		</div>

		<!-- Banner End -->



		<!-- Inner Content -->
		<div class="inner-page padd">

			<div class="menu padd">
				<div class="container">
					<!-- Menu content container -->
					<div class="menu-container">
						<div class="row flex-container">

							<c:choose>
								<c:when test="${name_menu==nul}">
									<!-- 즐겨찾기에 추가한 식당이 없을 때 -->
									<div class="col-md-12 col-sm-12">

										<h2 class="text-center">즐겨찾기에 추가한 식당이 없습니다.</h2>

									</div>
								</c:when>
								<c:otherwise>
									<!-- 즐겨찾기에 추가한 식당이 있을 때 -->
									<c:forEach var="nm" items="${name_menu}" varStatus="status">
										<div class="col-md-4 col-sm-4">
											<!-- Menu header -->
											<!-- 식당 소개 페이지 링크 -->
											<%-- <a href="/TodayLunch/Rest/showRest.lunch?r_name=${nm.key}"> --%>
												<div class="menu-head" onClick="location.href='/TodayLunch/Rest/showRest.lunch?r_name=${nm.key}'">
													<!-- Image for menu item -->
													<img class="menu-img img-responsive img-thumbnail"
														src="${r_img0List[status.index] }" alt="" />
													<!-- Menu title / Heading -->
													<!-- 식당 이름 -->
													<h3>${nm.key}</h3>
													<!-- Border for above heading -->
													<div class="title-border" style="border-bottom:3px solid #E7C1BA"></div>
												</div>
											<!-- </a> -->

											<!-- Menu item details -->
											<div class="menu-details"  style="background-color:#E7C1BA;border-color:#6C702F">
												<!-- Menu list -->
												<ul class="list-unstyled">
													<c:forEach var="menu" items="${nm.value}">
														<li>
															<div class="menu-list-item">
																<!-- Icon -->
																<!-- 해당 식당의 메뉴를 하나씩 출력 -->
																<i class="fa fa-angle-right"></i> <a style="color:#513629">${menu}</a>
															</div>
														</li>
														<div class="clearfix"></div>
													</c:forEach>
												</ul>
											</div>
											<!-- / Menu details end -->
										</div>
									</c:forEach>
								</c:otherwise>
							</c:choose>

							<!-- Showcase Start -->

							<!-- Showcase End -->
						</div>
					</div>
				</div>
			</div>
			<!-- menu padd End -->
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
	$(function() {
		//resizeFont();
		//$('.img-responsive').load(function(){resizeFont()});
		//$('img .menu-img').on('load', function(){resizeFont()});
		$(window).load(function() {resizeFont();})
		$(window).resize(function() {
			resizeFont();
		})
	})
	//윈도우 크기가 바뀔 때마다 메인의 식당 이름 폰트 사이즈도 변경하기
	function resizeFont() {
		//alert("resizeFont")
		$('.menu-head h3').each(function(index) {
			var h3textlength = $(this).text().length;
			var divwidth = $(this).width();
			if (h3textlength < 4) {
				divwidth = $(this).width() * 0.4;
				/*$(this).css({
					"font-size" : divwidth / h3textlength + "px"
				}); */
			} else if (h3textlength < 8) {
				divwidth = $(this).width() * 0.8;
			} else {
				//divwidth=$(this).width()*0.9;
			}
			//alert($(this).height())
			var marginTop = divwidth / h3textlength;
			$(this).next().css({
				"width" : $(this).width() * 0.6 + "px",
				"margin-left" : $(this).width() * -0.3 + "px",
				"margin-top" : marginTop / 2 + "px",
				
			})
			$(this).css({
				"top" : "30px",
				"height" : $(this).parent().height() + "px",
				"line-height" : $(this).parent().height() + "px",
				"font-size" : marginTop + "px"
			}); 
		})

	}
	</script>
</body>
</html>






