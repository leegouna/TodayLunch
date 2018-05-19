<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Title here -->
		<title>LOGIN Pro</title>
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

<c:if test="${check==true }">
<c:set var="s_id" value="${requestScope.p_id}" scope="session"></c:set>
<c:set var="grade" value="${grade}" scope="session"></c:set>
<c:redirect url="../main.lunch"></c:redirect>
</c:if>

<c:if test="${check==false }">
	<!-- <div class="alert alert-danger" role="alert">
		<p><strong>Check your ID or Password please!</strong></p>
		<button type="button	" class="close" data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div> -->
	<!-- Shopping cart Modal(오류 모달) -->
		<div class="modal fade" id="shoppingcart1" tabindex="-1" role="dialog" aria-hidden="false" >
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title">Error!</h4>
					</div>
					<div class="modal-body">
						<!-- Items table -->
						<table class="table table-striped">
							<p>Please check your ID or Password again</p>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" id="close" class="btn btn-default" data-dismiss="modal">OK</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		<!-- Model End -->

</c:if>
		
<!-- <script>
alert("아이디와 비밀번호를 다시 확인해주세요")
location.href="/TodayLunch/main.lunch"
</script> -->
<%-- <c:redirect url="/main.lunch"></c:redirect> --%>

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
			$('#shoppingcart1').modal();
			$('#close').click(function(){
				window.location.href='/TodayLunch/Login/login.lunch';
			})
		</script>
</body>
</html>