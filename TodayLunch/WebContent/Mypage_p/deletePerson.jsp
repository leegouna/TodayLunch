<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>회원탈퇴</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<link href="../css/delstyle.css" rel="stylesheet">

</head>

<body>

	<div class="wrapper">
		<!--top-->
		<jsp:include page="../top.jsp"/>
		<!-- Inner Content -->
		<div class="inner-page padd">
			<!-- Nutrition Start -->
			<div class="nutrition">
				<div class="container">
					<div class="row">
						<div class="col-md-offset-4 col-md-4 col-sm-offset-4 col-sm-4">
							<!-- Nutrition Item -->
							<div class="nutrition-item">
								<!-- Heading -->
								<h4>BYE MY FRIEND</h4>
								<!-- Nutrition information table -->
								<div class="table-responsive" style="border:none;">
									<table class="table table-bordered">
										<c:if test="${p==null }">
											<form role="form" name="delform" method="post">
												<label for="p_passwd">${p_id} 님 비밀번호를 입력해주세요 </label>
												<div class="form-group" id="leave_form">
													<input type="password" name="p_passwd" id="p_passwd"
														class="form-control" style="border-radius: 20px">
												</div>

												<div class="col-md-offset-2 col-md-2 col-xs-4">
													<input type="submit" name="out" id="out" value="submit">
												</div>
												<div class="col-md-offset-1 col-md-2 col-xs-4">
													<input type="button" name="cancel" id="cancel"
														value="cancel" onclick="history.back()"
														style="margin-left: 20px">
												</div>
											</form>
										</c:if>
									</table>
								</div>
							</div>
							<!--/ Nutrition info end  -->
						</div>
						<!--/ Column end  -->
					</div>
				</div>
			</div>
			<c:if test="${p==0 }">
				<!-- Shopping cart Modal(오류 모달) -->
				<div class="modal" id="shoppingcart1" tabindex="-1" role="dialog"
					aria-hidden="false"
					style="display: none; padding-right: 17px; z-index: 1050;">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title">Error!</h4>
							</div>
							<div class="modal-body">

								<table class="table table-striped">
									<p>Please check your ID or Password again</p>
								</table>
							</div>
							<div class="modal-footer">
								<button type="button" id="close" class="btn btn-default"
									data-dismiss="modal"
									onclick="location.href='Mypage_p/deletePerson.lunch'">OK</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- .modal -->
				<!--Model End  -->

				<!-- 		<script>
  		alert("비밀번호가 맞지않습니다.")
  		location.href="TodayLunchSpring2/Mypage_p/deletePerson.lunch";
  	</script> -->
			</c:if>

			<!--footer-->
			<div>
				<jsp:include page="../footer.jsp"></jsp:include>
			</div>
		</div>
		<!-- inner-page end -->
	</div>
	<!--wrapper end-->
	<span class="totop"><a href="#"><i class="fa fa-angle-up"></i></a></span>

	<!--js-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- <script src="../js/bootstrap.min.js"></script> -->
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
		/* function delcheck(p_passwd) {
			if (p_passwd == "") {  */
		//var mem_id=document.getElementById("ducheck"); -> <td> 정보
		/*var p_passwd = $("p_passwd");
		 alert(mem_id); //[object~]
		$("p_passwd").innerHTML = "<font color='red'>비밀번호를 입력해주세요</font>";
		$("p_passwd").focus(); */
		/* 	$('#centralModalSm').modal(); */
		/* 	return; */
		/* return false; */

		//$('#centralModalSm').modal();
		$('#shoppingcart1').modal();
		$('#close').click(function() {
			window.location.href = '/TodayLunch/Mypage_p/deletePerson.lunch';
		})

		/* $(function(){
			$('#out').click(function(){
				var passwd=$('#p_passwd')
				if(passwd=="" || passwd==0){
					$('#shoppingcart1').modal();
					return;
				}
			})
		})  */
		/* 	}
		}) */
	</script>
</body>
</html>






