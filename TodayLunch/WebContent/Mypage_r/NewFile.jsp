<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="beans.MenuDAO, java.util.ArrayList"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
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
</style>
</head>
<body>
	<jsp:include page="../top.jsp" />

	<div class="inner-page padd">

		<div class="menu padd">
			<div class="container">
				<!-- Default Heading -->
				<div class="default-heading">
					<!-- Crown image -->
					<img class="img-responsive" src="../img/crown.png" alt="" />
					<!-- Heading -->
					<h2>Menu</h2>
					<!-- Paragraph -->
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
					<!-- Border -->
					<div class="border"></div>
				</div>
				<!-- Menu content container -->
				<div class="menu-container">
					<div class="row">
						<div class="col-md-4 col-sm-4">
							<!-- Menu header -->
							<div class="menu-head">
								<!-- Image for menu item -->
								<img class="menu-img img-responsive img-thumbnail"
									src="../img/menu/menu1.jpg" alt="" />
								<!-- Menu title / Heading -->
								<h3>설마 식당 이름이<br>이만큼이나 길기까지</h3>
								<!-- Border for above heading -->
								<div class="title-border br-red"></div>
							</div>
							<!-- Menu item details -->
							<div class="menu-details br-red">
								<!-- Menu list -->
								<ul class="list-unstyled">
									<li>
										<div class="menu-list-item">
											<!-- Icon -->
											<i class="fa fa-angle-right"></i> <a href="#">Fish</a>
											<!-- Price badge -->
											<span class="pull-right">$12</span>
											<div class="clearfix"></div>
										</div>
									</li>
									<li>
										<div class="menu-list-item">
											<!-- Icon -->
											<i class="fa fa-angle-right"></i> <a href="#">Consequent</a>
											<!-- Price badge -->
											<span class="pull-right">$9</span>
											<div class="clearfix"></div>
										</div>
									</li>
									<li>
										<div class="menu-list-item">
											<!-- Icon -->
											<i class="fa fa-angle-right"></i> <a href="#">Praising
												Pain</a>
											<!-- Price badge -->
											<span class="pull-right">$19</span>
											<div class="clearfix"></div>
										</div>
									</li>
									<li>
										<div class="menu-list-item">
											<!-- Icon -->
											<i class="fa fa-angle-right"></i> <a href="#">Exception
												Tint</a>
											<!-- Price badge -->
											<span class="pull-right">$6</span>
											<div class="clearfix"></div>
										</div>
									</li>
									<li>
										<div class="menu-list-item">
											<!-- Icon -->
											<i class="fa fa-angle-right"></i> <a href="#">Laborious
												Rhys</a>
											<!-- Price badge -->
											<span class="pull-right">$29</span>
											<div class="clearfix"></div>
										</div>
									</li>
								</ul>
							</div>
							<!-- / Menu details end -->
						</div>
						<div class="col-md-4 col-sm-4">
							<!-- Menu header -->
							<div class="menu-head">
								<!-- Image for menu item -->
								<img class="menu-img img-responsive img-thumbnail"
									src="../img/menu/menu2.jpg" alt="" />
								<!-- Menu title / Heading -->
								<h3>치킨</h3>
								<!-- Border for above heading -->
								<div class="title-border br-green"></div>
							</div>
							<!-- Menu item details -->
							<div class="menu-details br-green">
								<!-- Menu list -->
								<ul class="list-unstyled">
									<li>
										<div class="menu-list-item">
											<!-- Icon -->
											<i class="fa fa-angle-right"></i> <a href="#">Fried
												Chicken</a>
											<!-- Price badge -->
											<span class="pull-right">$29</span>
											<div class="clearfix"></div>
										</div>
									</li>
									<li>
										<div class="menu-list-item">
											<!-- Icon -->
											<i class="fa fa-angle-right"></i> <a href="#">Chicken
												Curie</a>
											<!-- Price badge -->
											<span class="pull-right">$49</span>
											<div class="clearfix"></div>
										</div>
									</li>
									<li>
										<div class="menu-list-item">
											<!-- Icon -->
											<i class="fa fa-angle-right"></i> <a href="#">Praising
												Pain</a>
											<!-- Price badge -->
											<span class="pull-right">$19</span>
											<div class="clearfix"></div>
										</div>
									</li>
									<li>
										<div class="menu-list-item">
											<!-- Icon -->
											<i class="fa fa-angle-right"></i> <a href="#">Exception
												Tint</a>
											<!-- Price badge -->
											<span class="pull-right">$6</span>
											<div class="clearfix"></div>
										</div>
									</li>
									<li>
										<div class="menu-list-item">
											<!-- Icon -->
											<i class="fa fa-angle-right"></i> <a href="#">Laborious
												Rhys</a>
											<!-- Price badge -->
											<span class="pull-right">$29</span>
											<div class="clearfix"></div>
										</div>
									</li>
								</ul>
							</div>
							<!-- / Menu details end -->
						</div>
						<div class="col-md-4 col-sm-4">
							<!-- Menu header -->
							<div class="menu-head">
								<!-- Image for menu item -->
								<img class="menu-img img-responsive img-thumbnail"
									src="../img/menu/menu3.jpg" alt="" />
								<!-- Menu title / Heading -->
								<h3>후식도 있음</h3>
								<!-- Border for above heading -->
								<div class="title-border br-lblue"></div>
							</div>
							<!-- Menu item details -->
							<div class="menu-details br-lblue">
								<!-- Menu list -->
								<ul class="list-unstyled">
									<li>
										<div class="menu-list-item">
											<!-- Icon -->
											<i class="fa fa-angle-right"></i> <a href="#">Choco Nuts</a>
											<!-- Price badge -->
											<span class="pull-right">$2</span>
											<div class="clearfix"></div>
										</div>
									</li>
									<li>
										<div class="menu-list-item">
											<!-- Icon -->
											<i class="fa fa-angle-right"></i> <a href="#">Venial Cup</a>
											<!-- Price badge -->
											<span class="pull-right">$4</span>
											<div class="clearfix"></div>
										</div>
									</li>
									<li>
										<div class="menu-list-item">
											<!-- Icon -->
											<i class="fa fa-angle-right"></i> <a href="#">Praising
												Pain</a>
											<!-- Price badge -->
											<span class="pull-right">$9</span>
											<div class="clearfix"></div>
										</div>
									</li>
									<li>
										<div class="menu-list-item">
											<!-- Icon -->
											<i class="fa fa-angle-right"></i> <a href="#">Exception
												Tint</a>
											<!-- Price badge -->
											<span class="pull-right">$6</span>
											<div class="clearfix"></div>
										</div>
									</li>
									<li>
										<div class="menu-list-item">
											<!-- Icon -->
											<i class="fa fa-angle-right"></i> <a href="#">Laborious
												Rhys</a>
											<!-- Price badge -->
											<span class="pull-right">$5</span>
											<div class="clearfix"></div>
										</div>
									</li>
								</ul>
							</div>
							<!-- / Menu details end -->
						</div>
					</div>
				</div>
				<!-- /Menu container end -->
			</div>
		</div>

		<!-- Menu End -->


	</div>
	<!-- <input type="text"> -->

	<jsp:include page="../footer.jsp" />

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
	<script>
		$(function() {
			//윈도우 크기가 바뀔 때마다 메인의 식당 이름 폰트 사이즈도 변경하기
			$(window).resize(function() {
				$('.menu-head h3').each(function(index) {
					var h3textlength = $(this).text().length;
					var divwidth=$(this).width();
					if(h3textlength<4){
						divwidth=$(this).width()*0.4;
						$(this).css({"font-size":divwidth/h3textlength+"px"});
					}else if(h3textlength<8){
						divwidth=$(this).width()*0.8;
						$(this).css({"font-size":divwidth/h3textlength+"px"});
					}else{
						//divwidth=$(this).width()*0.9;
						$(this).css({"font-size":divwidth/h3textlength+"px"});
					}
					//alert($(this).height())
					$(this).next().css({"width":$(this).width()*0.6+"px", "margin-left":$(this).width()*-0.3+"px", 
						"margin-top":divwidth/h3textlength/2+"px"})
						//$(this).css({"height":$('.menu-head').height()+"px"});
						$(this).css({"top":"30px", "height":$('.menu-head').height()+"px", "line-height":$('.menu-head').height()+"px"});
				})

			}).resize();
		})
	</script>
</body>
</html>






