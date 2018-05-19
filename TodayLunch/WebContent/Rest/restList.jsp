<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<!-- Title here -->
<title>식당 목록 - 오늘의 점심</title>
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

.rest_info{
	display: -webkit-box; 
	display: -ms-flexbox; 
	display: box; 
	margin-top:1px; 
	max-height:80px; 
	overflow:hidden; 
	vertical-align:top; 
	text-overflow: ellipsis; 
	word-break:break-all; 
	-webkit-box-orient:vertical; 
	-webkit-line-clamp:3

}

.pre{
    white-space: pre-wrap;
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
				<h2 class="white">식당 목록</h2>
				<ol class="breadcrumb">
					<li><a href="../index.jsp">메인</a></li>
					<li class="active">식당 목록</li>
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
						<div class="row flex-container">
						<c:if test="${allRest ne null }">
							<c:forEach var="rest" items="${allRest}">
								<div class="col-md-3 col-sm-6">
									<!-- Shopping items -->
									<!-- 식당 소개 페이지 링크 -->
									<a href="showRest.lunch?r_name=${rest.r_name}">
										<div class="shopping-item">
											<!-- Image -->
											<img class="img-responsive" src="${rest.r_img1}"
												alt="" />
											<!-- Shopping item name / Heading -->
											<!-- 식당 이름 -->
											<h4 class="pull-left">${rest.r_name}</h4>

											<div class="clearfix"></div>
											<!-- Paragraph -->
											<!-- 식당 소개문 -->
											<p class="rest_info pre">${rest.r_info}</p>

											<!-- Shopping item hover block & link -->
											<!-- <div class="item-hover br-red hidden-xs"></div> -->
											<!-- <a class="link hidden-xs" href="#">Add to cart</a> -->
										</div>
									</a>
								</div>
							</c:forEach>
							</c:if>
							<!-- 등록된 식당이 없을 때 -->
							<c:if test="${allRest eq null }">
								<div class="col-md-12 col-sm-12">

									<h2 class="text-center" style="color: #513629;">등록된 식당이 없습니다.</h2>

								</div>
							</c:if>
						</div>
						<!-- <div style='width: 100%'  align='center'><img src='../img/icon_loading.gif'></div> -->
					</div>
				</div>
			</div>

			<!-- Shopping End -->

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
		$(function() {
			var pageRow = 0;
			var stop = 0;

			$(window)
					.scroll(
							function() {
								if (stop == 0) {
									var $this = $(this);
									var $results = $(".flex-container");
									if (!$results.data("loading")) {
										var pageDown = $(".header").height()
												+ $(".banner").height()
												+ $(".inner-page").height()
										//alert($results.html()) ;
										if ($(window).scrollTop()
												+ $(window).height() > pageDown) {
											//alert(pageDown) ;
											pageRow++;
											loadMore(pageRow);
											//alert('stop=' + stop)
										}
									}
								}
							});

			function loadMore(i) {
				//alert(i)
				$
						.ajax({
							url : "/TodayLunch/Rest/restList.lunch",
							type : "post",
							data : {
								'index' : i
							},
							beforeSend : function(xhr) {
								$(".flex-container")
										.after(
												$(
														"<div class='loading' style='width: 100%'  align='center'><img src='../img/icon_loading.gif'></div>")
														.fadeIn('slow')).data(
												"loading", true);
							},
							success : function(data) {
								var $results = $(".flex-container");
								$(".loading").fadeOut('fast', function() {
									$(this).remove();
								});
								var $data = $(data);
								var $f_data = $data.find(".flex-container");
								//alert("h4" + $f_data.find("h4").text());
								var restList = $f_data.find("h4").text();
								//alert(restList)

								$data.hide();
								if (restList != "") {
									$results.append($f_data.html());
								} else {
									stopfun();
								}
								$data.fadeIn();
								$results.removeData("loading");
							}
						});
			}
			function stopfun() {
				stop = 1;
			}

		})
	</script>
</body>
</html>