<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,beans.*"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Title here -->
<title>It's Personal Mypage!</title>
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
				<h2 class="white">Admin - Notice</h2>
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

			<!-- Shopping Start -->

			<div class="shopping">
				<div class="container">
					<!-- Shopping items content -->
					<div class="shopping-content">
						<div class="row">
						
							
<table class="table table-striped">
	<c:forEach var="list" items="${list}">
		<tr>
			<td>${list.no_num}</td>
			<td id="content${list.no_num}"><a style="cursor:pointer" onclick="modify(${list.no_num})">${list.no_content}</a></td>
			<td>${list.no_time}</td>
			<td><a href="noticeDelete.lunch?no_num=${list.no_num}">삭제</a></td>
		</tr>
	</c:forEach>
</table>




<form action="notichWrite.lunch">
<input type="textarea" name="no_content">
<input type="submit" value="신규 공지사항 작성">
</form>
							


							<!-- Showcase End -->

							<!--식권사용-->
							
							
							
						</div>
					</div>
				</div>
				<!-- / Inner Page Content End -->

				<!-- Footer Start -->

				<jsp:include page="../footer.jsp"></jsp:include>

				<!-- Footer End -->

			</div>
			<!-- / Wrapper End -->
</div>

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
	
	
	<script>
		var content;
		var state = false;
		var num;
	function modify(ind){
			
			var setting = '<input type="text" id="no_content"><input type="button" value="수정" onclick="sub('+ind+')"><input type="button" value="취소" onclick="cancle()">'

			if(state==false){
				num = '#content'+ind;
				state=true;
				content = $(num).html()
		$(num).html(setting);
		return false;
			}
	}
	function cancle(){
		state=false;
		$(num).html(content)
	}
	function sub(ind){
		var content = $('#no_content').val()
		if(content==""){alert('빈문자열은 안됩니다'); return}
		$.ajax({
			url:"noticeUpdate.lunch",
			data:{"no_num":ind,"no_content":content},
			success:function(){
				window.location.reload();
			}
		})
	}
	</script>
	
</body>
</html>
