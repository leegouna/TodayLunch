<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>검색 결과 - 오늘의 점심</title>
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

.dishes .img-frame{
	cursor:Auto;
}

.menu-head{
	cursor:pointer;
}

</style>
</head>

<body>


	<!-- Shopping cart Modal -->
	<div class="modal fade" id="shoppingcart1" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">Shopping Cart</h4>
				</div>
				<div class="modal-body">
					<!-- Items table -->
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Name</th>
								<th>Quantity</th>
								<th>Price</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><a href="#">Exception Reins Evocative</a></td>
								<td>2</td>
								<td>$200</td>
							</tr>
							<tr>
								<td><a href="#">Taut Mayoress Alias Appendicitis</a></td>
								<td>1</td>
								<td>$190</td>
							</tr>
							<tr>
								<td><a href="#">Sinter et Molests Perfectionist</a></td>
								<td>4</td>
								<td>$99</td>
							</tr>
							<tr>
								<th></th>
								<th>Total</th>
								<th>$489</th>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Continue
						Shopping</button>
					<button type="button" class="btn btn-info">Checkout</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- Model End -->

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
				<h2 class="white">검색 결과</h2>
				<ol class="breadcrumb">
					<li><a href="/TodayLunch/main.lunch">메인</a></li>
					<li class="active">검색 결과</li>
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
								<c:when test="${menuList==null or menuListSize==0}">
									<div class="col-md-12 col-sm-12">

										<h2 class="text-center">일치하는 결과가 없습니다.</h2>

									</div>
								</c:when>
								<c:otherwise>
									<c:forEach var="searchMenu" items="${menuList}"
										varStatus="status">
										<div class="col-md-4 col-sm-4">
											<!-- Menu header -->
											<!-- 식당 소개 페이지 링크 -->
											<%-- <a href="/TodayLunch/Rest/showRest.lunch?r_name=${searchMenu.r_name}"> --%>
												<div class="menu-head" onClick="location.href='/TodayLunch/Rest/showRest.lunch?r_name=${searchMenu.r_name}'">
													<!-- Image for menu item -->
													<img class="menu-img img-responsive img-thumbnail"
														src="${r_img0List[status.index] }" alt="" />
													<!-- Menu title / Heading -->
													<!-- 식당 이름 -->
													<h3>${searchMenu.r_name}</h3>
													<!-- Border for above heading -->
													<div class="title-border br-red"></div>
												</div>
											<!-- </a> -->
											<!-- Menu item details -->
											<div class="menu-details br-red">
												<!-- Menu list -->
												<ul class="list-unstyled">
													<c:forEach var="m_array" items="${m_arrayList}"
														begin="${status.index}" end="${status.index}">
														<%-- <c:out value="${status.index}"/> --%>
														<c:forEach var="menu" items="${m_array }">
															<li>
																<div class="menu-list-item">
																	<!-- Icon -->
																	<!-- 해당 식당의 메뉴를 하나씩 출력 -->
																	<i class="fa fa-angle-right"></i> <a>${menu}</a>
																</div>
															</li>
														</c:forEach>
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






