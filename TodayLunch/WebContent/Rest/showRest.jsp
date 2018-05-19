<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="rest_info" value="${rest_info}" />
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<!-- Title here -->
<title>${rest_info.r_name}-오늘의 점심</title>
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
<!--<link href="../css/style.css" rel="stylesheet"> -->
<!--[if IE]><link rel="stylesheet" href="css/ie-style.css"><![endif]-->
<!-- <link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../css/star-rating.css" media="all"
	type="text/css" />
<link rel="stylesheet" href="../css/theme.css" media="all"
	type="text/css" />
	<!-- Custom CSS -->
<link href="../css/style.css" rel="stylesheet">

<style>
.pre {
	white-space: pre-wrap;
}


</style>
<!-- Favicon -->
<link rel="shortcut icon" href="#">
</head>

<body>


	<!-- Shopping cart Modal -->

	<!-- Page Wrapper -->
	<div class="wrapper" style="background-color:#F2EFE9">

		<!-- Header Start -->

		<jsp:include page="../top.jsp" />

		<!-- Header End -->

		<!-- Banner Start -->

		<div class="banner padd">
			<div class="container">
				<!-- Image -->
				<img class="img-responsive" src="../img/crown-white.png" alt="" />
				<!-- Heading -->
				<!-- 식당 이름 출력 -->
				<h2 class="white">${rest_info.r_name}</h2>
				<ol class="breadcrumb">
					<li><a href="../index.jsp">메인</a></li>
					<li class="active">${rest_info.r_name}&nbsp;소개</li>
				</ol>
				<div class="clearfix"></div>
			</div>
		</div>

		<!-- Banner End -->



		<!-- Inner Content -->
		<div class="inner-page padd">

			<!-- Blog Start -->

			<div class="blog">
				<div class="container">
					<div class="row">
						<div class="col-md-8">
							<!-- The new post done by user's all in the post block -->
							<div class="blog-post">
								<!-- Entry is the one post for each user -->
								<div class="entry">
									<!-- Post Images -->
									<div class="blog-img pull-left">
										<img src="${rest_info.r_img2}"
											class="img-responsive img-thumbnail" alt="" />
									</div>
									<!-- Meta for this block -->
									<div class="meta">
										<!-- 개인회원일 때에만 즐겨찾기 버튼 표시하기 -->
										<c:if test="${sessionScope.grade==3}">
											<span class="pull-right">
												<button class="${btn_class}" id="bookmark" type="button">${btn_text}</button>
											</span>
										</c:if>
									</div>
									<!-- Heading of the  post -->
									<h3>${rest_info.r_name}</h3>
									<hr />
									<!-- Horizontal line -->
									<!-- Paragraph -->
									<p class="pre">${rest_info.r_info}</p>
									<div class="clearfix"></div>
								</div>
								<!-- Comment section -->
								<div class="comments">
								<input type="hidden" name="p_id" value="${p_id}">
									<jsp:include page="../Review/reviewList.jsp">
										<jsp:param value="${pageNum}" name="pageNum" />
										<jsp:param value="${review}" name="review" />
										<jsp:param value="${pgList}" name="pgList" />
										<jsp:param value="${article.r_name}" name="r_name" />
										<jsp:param value="${article.re_num}" name="re_num" />
										<jsp:param value="${article.p_id}" name="p_id" />
										<jsp:param value="${article.re_star}" name="re_star" />
										<jsp:param value="${article.re_content}" name="re_content" />
										<jsp:param value="${article.re_time}" name="re_time" />
									</jsp:include>
									<div class="clearfix"></div>
								</div>
								<!--/ Comment section end -->
							</div>
							<!--/ Blog post class end -->
							<!-- Comment posting -->
							<div class="respond well">
								<jsp:include page="../Review/reviewWrite.jsp" />
								<div class="clearfix"></div>
								<div class="component-content" align="center">
									<ul class="pagination">
										<li><c:if test="${pgList.startPage>pgList.blockSize}">
											<a
												href="/TodayLunch/Rest/showRest.lunch?r_name=${r_name}&pageNum=${pgList.startPage-pgList.blockSize}">&laquo;</a>
										</c:if></li>
										<c:forEach var="i" begin="${pgList.startPage}"
											end="${pgList.endPage}">
											<c:if test="${pgList.currentPage==i}">
												<li class="active"><a
													href="/TodayLunch/Rest/showRest.lunch?r_name=${r_name}&pageNum=${i}">${i}</a></li>
											</c:if>
											<c:if test="${pgList.currentPage!=i}">
												<li><a
													href="/TodayLunch/Rest/showRest.lunch?r_name=${r_name}&pageNum=${i}">${i}</a></li>
											</c:if>
										</c:forEach>
										<li><c:if test="${pgList.endPage<pgList.pageCount}">
												<a
													href="/TodayLunch/Rest/showRest.lunch?r_name=${r_name}&pageNum=${pgList.startPage+pgList.blockSize}">&raquo;</a>
											</c:if></li>
									</ul>
								</div>
							</div>
							<!--/ Comment posting end -->

						</div>
						<!--/ Main blog column end -->
						<div class="col-md-4">
							<!-- Blog page sidebar -->
							<div class="blog-sidebar">
								<div class="row">
									<div class="col-md-12 col-sm-12">
										<!-- Blog sidebar page widget -->
										<div class="sidebar-widget" style="height: 230pt">
											<!-- Widget Heading -->
											<!-- 지도 표시& 위도, 경도 보내기 -->
											<jsp:include page="map.jsp">
												<jsp:param value="${rest_info.r_wi}" name="wi" />
												<jsp:param value="${rest_info.r_gy}" name="gy" />
												<jsp:param value="${rest_info.r_add}" name="r_add" />
											</jsp:include>
										</div>
										<!--/ Widget end -->
									</div>

								</div>
								<!--/ Inner row end -->
							</div>
							<!--/ Page sidebar end -->
						</div>
					</div>
					<!--/ Row end -->
				</div>
			</div>

			<!-- Blog End -->



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
	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>     
    <script src="../js/star-rating.js" type="text/javascript"></script>
    <script src="../js/theme.js" type="text/javascript"></script>
	
	
	<!-- JS code for this page -->
	<script>
		$(function() {
			$(".meta").on(
					"click",
					"#bookmark",
					function() {
						var bm_class = $("#bookmark").attr('class');
						var bm_status = null;
						var r_name = '${rest_info.r_name}';
						//alert(bm_class)
						if (bm_class == 'btn btn-danger') {
							bm_status = true;
						} else {
							bm_status = false;
						}

						$.ajax({
							type : "POST",
							url : '/TodayLunch/Rest/showRest.lunch',
							data : {
								r_name : r_name,
								bm_click : bm_status
							},
							success : function(response) {
								var startstr = '<div class="meta">';
								var start = response.indexOf(startstr);
								var startlength = startstr.length;
								var endstr = '<!-- Heading of the  post -->';
								var end = response.indexOf(endstr, start
										+ startlength);
								//var endlength = endstr.length;
								//alert("last:"+response.lastIndexOf("</table>")+"\nlast2:"+end)

								/* var m_content = $.trim(response.substring(start
										+ startlength, end + endlength)) */
								var m_content = $.trim(response.substring(start
										+ startlength, end));
								//alert(m_content)
								//$("#contentTable").html(m_content)
								//alert(bm_status);
								if (bm_status) {
									alert("즐겨찾기에서 삭제되었습니다.");
								} else {
									alert("즐겨찾기에 추가되었습니다.");
								}
								$(".meta").html(m_content);

							},
							error : function(error) {
								alert("에러가 발생했습니다.\n다시 시도해주세요.");
							}
						})

					})
		})
	</script>
</body>
</html>