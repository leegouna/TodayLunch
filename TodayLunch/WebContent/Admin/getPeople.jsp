<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<!-- Title here -->
<title>Admin - Member</title>
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


	<!-- Shopping cart Modal -->

	<!-- Model End -->

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
				<h2 class="white">Admin - Member</h2>
				<ol class="breadcrumb">
					<li><a href="/TodayLunch/main.lunch">HOME</a></li>
					<li><a href="myPage.lunch">MY PAGE</a></li>
				</ol>
				<div class="clearfix"></div>
			</div>
		</div>

		<!-- Banner End -->



		<!-- Inner Content -->
		<div class="inner-page padd">

			<!-- Contact Us Start -->

			<div class="contactus">
				<div class="container">
					<div class="row">
						<div class="col-md-12">

							<center>
								<a class="btn"
									href="/TodayLunch/Admin/getPeople.lunch?type=person"
									id="people">개인</a> // <a class="btn"
									href="/TodayLunch/Admin/getPeople.lunch?type=rest" id="rest">식당</a>
								<!-- 
		pglist.put("currentPage", currentPage);
		
		pglist.put("pageSize", pageSize);
		pglist.put("blockSize", blockSize);
		
		pglist.put("startRow", startRow);
		pglist.put("endRow", endRow);
		
		pglist.put("pageCount", pageCount);
		pglist.put("blockCount", blockCount);
		
		pglist.put("startPage", startPage);
		pglist.put("endPage", endPage);
		
		pglist.put("beginPerPage", beginPerPage); -->

								<br>
								<c:if test="${pgList eq null}">

분류를 선택하여주세요

</c:if>



								<c:if test="${pgList.beginPerPage>0}">
									<table class="table table-striped">
										<thead>
										<tr>
											<td>번 호</td>
											<td>아이디</td>
											<td>이메일</td>
											<!-- <td align="center"  width="150" >작성일</td>  -->
											<td>
											이 름 or 연락처
											</td>
										</tr>
										</thead>

										<c:set var="beginPerPage" value="${pgList.beginPerPage}" />
										<c:forEach var="list" items="${list}">

											<tr>

												<td><c:out
														value="${beginPerPage}" /> <c:set var="beginPerPage"
														value="${beginPerPage-1}" /></td>

												<td><a href="">${list.p_id} ${list.r_id}</a></td>
												<td><a
													href="mailto:${list.p_email} ${list.r_email}">${list.p_email} ${list.r_email}
														</a></td>
												<!-- <td align="center"  width="150">
    </td> -->
												<td>${list.p_name} ${list.r_phone}</td>

											</tr>
										</c:forEach>

									</table>
								
								<ul class="pagination">

									<c:if test="${pgList.startPage>pgList.blockSize}">
										<li><a
											href="/TodayLunch/Admin/getPeople.lunch?type=${type}&pageNum=${pgList.startPage-pgList.blockSize}">[이전]</a>
										</li>
									</c:if>

									<c:forEach var="i" begin="${pgList.startPage}"
										end="${pgList.endPage}">

										<c:if test="${i==pgList.currentPage}">
											<li><a
												href="/TodayLunch/Admin/getPeople.lunch?type=${type}&pageNum=${i}">
													<font color="red>"><b>${i}</b></font>
											</a></li>
										</c:if>

										<c:if test="${i!=pgList.currentPage}">
											<li><a
												href="/TodayLunch/Admin/getPeople.lunch?type=${type}&pageNum=${i}">${i}</a>
											</li>
										</c:if>

									</c:forEach>

									<c:if test="${pgList.endPage<pgList.pageCount}">
										<li><a
											href="/TodayLunch/Admin/getPeople.lunch?type=${type}&pageNum=${pgList.startPage+pgList.blockSize}">[다음]</a>
										</li>
									</c:if>
								</ul>
								</c:if>
						</div>
</center>
					</div>
				</div>
			</div>

			<!-- Contact Us End -->

			<!-- Showcase Start -->

			<!-- Showcase End -->

		</div>
		<!-- / Inner Page Content End -->

		<!-- Footer Start -->

		<jsp:include page="../footer.jsp"></jsp:include>

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
		
	</script>
</body>
</html>

