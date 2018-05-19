<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!-- Title here -->
<title>정보 수정 - 오늘의 점심</title>
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
.necessary {
	color: #f75353;
}

.holder img{
	margin : 15px 0px;
	width : 80%;
}
</style>
</head>

<body>


	<!-- Image File Modal -->
	<div class="modal fade" id="inputRestImage" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">사진 찾기</h4>
				</div>
				<div class="modal-body text-center">
					<form class="form-horizontal" role="form" id="updateImageform"
						enctype="multipart/form-data" method="post"
						action="/TodayLunch/Mypage_r/updateInfoPro.lunch">
						<div class="form-group">
							<h4>파일 선택을 눌러 메인에 쓰일 사진을 골라주세요.</h4>
							<input type="file" name="image_text0" class="form-control"
								style="width: 50%; display: inline-block" accept="image/*">
							<div class="holder"><img src="../img/restaurant/r_img0.PNG"></div>
						</div>
						<hr>
						<div class="form-group">
							<h4>파일 선택을 눌러 식당 목록에 쓰일 사진을 골라주세요.</h4>
							<input type="file" name="image_text1" class="form-control"
								style="width: 50%; display: inline-block" accept="image/*">
							<div class="holder"><img src="../img/restaurant/r_img1.PNG"></div>
						</div>
						<hr>
						<div class="form-group">
							<h4>파일 선택을 눌러 식당 소개에 쓰일 사진을 골라주세요.</h4>
							<input type="file" name="image_text2" class="form-control"
								style="width: 50%; display: inline-block" accept="image/*">
							<div class="holder"><img src="../img/restaurant/r_img2.PNG"></div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn" data-dismiss="modal" style="background-color:#6C702F;color:#fff">확인</button>
						</div>
					</form>
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
				<h2 class="white">정보 수정</h2>
				<ol class="breadcrumb">
					<li><a href="/TodayLunch/main.lunch">메인</a></li>
					<li><a href="myPage.lunch">마이 페이지</a></li>
					<li class="active">정보 수정</li>
				</ol>
				<div class="clearfix"></div>
			</div>
		</div>

		<!-- Banner End -->



		<!-- Inner Content -->
		<div class="inner-page padd">

			<!-- Checkout Start -->

			<div class="checkout">
				<div class="container">
					<!-- Heading -->
					<h3 style="margin-bottom:15px;">${rest.r_name}의&nbsp;정보</h3>
					<div class="row">
						<div class="col-md-7 col-sm-6">
							<!-- Checkout Form -->
							<form class="form-horizontal" role="form" method="post"
								name="updateInfoform" enctype="multipart/form-data"
								id="updateInfoform"
								action="/TodayLunch/Mypage_r/updateInfoPro.lunch">
								<input type="hidden" name="r_wi" id="r_wi" value="${rest.r_wi}">
								<input type="hidden" name="r_gy" id="r_gy" value="${rest.r_gy}">
								<!-- <input type="file" name="image0" style="display: none">
								<input type="file" name="image1" style="display: none">
								<input type="file" name="image2" style="display: none"> -->
								<div class="form-group">
									<label for="inputID" class="col-md-2 control-label">아이디</label>
									<div class="col-md-9">
										<input type="text" class="form-control" id="inputID"
											name="r_id" value="${rest.r_id}" readonly="readonly">
									</div>
								</div>
								<div class="form-group">
									<label for="inputPasswd" class="col-md-2 control-label">
										비밀번호<span class="necessary">*</span>
									</label>
									<div class="col-md-9">
										<input type="password" class="form-control" id="inputPasswd"
											name="r_passwd" placeholder="비밀번호를 입력해주세요.">
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail1" class="col-md-2 control-label">
										이메일<span class="necessary">*</span>
									</label>
									<div class="col-md-9">
										<input type="email" class="form-control" id="inputEmail1"
											name="r_email" value="${rest.r_email}"
											placeholder="이메일을 입력해주세요.">
									</div>
								</div>
								<div class="form-group">
									<label for="inputPhone" class="col-md-2 control-label">연락처</label>
									<div class="col-md-9">
										<input type="text" class="form-control" id="inputPhone"
											name="r_phone" value="${rest.r_phone}"
											placeholder="연락처를 입력해주세요.">
									</div>
								</div>
								<hr>
								<div class="form-group">
									<label for="inputRestName" class="col-md-2 control-label">
										식당 이름<span class="necessary">*</span>
									</label>
									<div class="col-md-9">
										<input type="text" class="form-control" id="inputRestName"
											name="r_name" value="${rest.r_name}"
											placeholder="식당의 이름을 입력해주세요.">
									</div>
								</div>
								<div class="form-group">
									<label for="inputRestImages" class="col-md-2 control-label">
										식당 사진</label>
									<div class="col-md-9">
										<input type="text" class="form-control" id="inputRestImages"
											name="r_image" style="width: 77%; display: inline-block"
											placeholder="사진을 등록해주세요.">
										<button type="button"
											class="form-control btn btn-default btn-sm"
											style="width: 21%; margin: 0px 0px 5px; padding: 6px 12px; font-size: font-size: 15px; background-color:#E7C1BA;color:#513629;"
											id="btnRestImage">찾기</button>
									</div>
								</div>
								<div class="form-group">
									<label for="inputAddress" class="col-md-2 control-label">주소</label>
									<div class="col-md-9">
										<input type="text" class="form-control" id="inputAddress"
											name="r_add" value="${rest.r_add}"
											placeholder="식당의 주소를 입력해주세요.">
									</div>
								</div>
								<div class="form-group">
									<label for="inputInfo" class="col-md-2 control-label">식당
										소개</label>
									<div class="col-md-9">
										<textarea class="form-control" id="inputInfo" rows="3"
											name="r_info" placeholder="식당을 소개해주세요.">${rest.r_info}</textarea>
									</div>
								</div>


								<div class="form-group">
									<div class="col-md-offset-2 col-md-9">
										<button type="submit" class="btn btn-sm" style="background-color:#E7C1BA;color:#513629">수정하기</button>
										&nbsp;
										<button type="reset" class="btn btn-sm" style="background-color:#F5E95D;color:#513629">다시
											작성</button>
										<button type="button"
											OnClick="location.href='deleteRest.lunch'"
											class="btn pull-right btn-sm" style="background-color:#6C702F;color:#fff">탈퇴하기</button>
									</div>
								</div>
							</form>
						</div>
						<div class="col-md-5 col-sm-6">
							<!-- Checkout sidebar items -->
							<div class="sidebar-item" style="border:2px double #E7C1BA;">
								<!-- Heading -->
								<p>식당의 위치</p>
								<br>
								<!-- Sidebar Paragraph -->
								<jsp:include page="map.jsp">
									<jsp:param value="${rest.r_wi}" name="r_wi" />
									<jsp:param value="${rest.r_gy}" name="r_gy" />
								</jsp:include>
								<p>지도를 클릭해서 식당의 위치를 입력해주세요.</p>
							</div>

						</div>
					</div>
				</div>
			</div>

			<!-- Checkout End -->

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
	<!-- 파일 업로드 -->
	<!-- <script src="http://malsup.github.com/jquery.form.js"></script> -->
	<!-- JS code for this page -->
	<script>
		//이미지 파일 임시 저장 및 미리보기
		$(function() {
			var _URL = window.URL || window.webkitURL;
			var image_file = [];
			$('input[type=file]').change(function(e) {
				var index = $('input[type=file]').index(this);

				var file, img;
				if ((file = this.files[0])) {
					img = new Image();
					//alert(file.type.match("image"));
					if (file.type.match("image") == "image") {
						img.onload = function() {

							$('.holder:eq(' + index + ')').html(img);
							/* $('.holder:eq(' + index + ')').children().css({
								'margin' : '15px 0px',
								'width' : '80%'
							}) */
							wrapBackground();
							image_file[index] = file;
						}
					} else {
						img.onerror = function() {
							alert("이미지 파일 중에서 선택해주세요.");
							$('.holder:eq(' + index + ')').html("");
						}
					}
					img.src = _URL.createObjectURL(file);
				}
			});

			$('button[type=submit]').on(
					'click',
					function(event) {
						var check = 0;
						$('.necessary').each(
								function() {
									if ($(this).parent().next().find('input')
											.val() == '') {
										alert('필수 정보를 입력해주세요.')
										$(this).parent().next().find('input')
												.focus();
										check = 1;
										return false;
									}
								})

						if (check == 0) {
							//submit 전에 
							var url = $('#updateInfoform').attr('action');
							var imageformData = new FormData(
									$("#updateImageform")[0]);
							var infoData = $('#updateInfoform')
									.serializeArray();
							for (var i = 0; i < infoData.length; i++)
								imageformData.append(infoData[i].name,
										infoData[i].value);
							//console.log(imageformData);
							$.ajax({
								type : "POST",
								url : url,
								data : imageformData,
								processData : false,
								contentType : false,
								success : function(result) {
									$('html').html(result);
								},
								error : function(result) {
									alert("수정에 실패하였습니다.\n다시 시도해주세요.");
								}
							});
						}
						event.preventDefault();
					})

			$('#btnRestImage').on('click', function(event) {
				$('#inputRestImage').modal();
			})

			$('.modal-footer button').on('click', function(event) {
				var image_text = "";
				for (var i = 0; i < 3; i++) {
					if (image_file[i] != null) {
						image_text += image_file[i].name + ', '
					}
				}
				image_text = image_text.substring(0, image_text.length - 2);//, 떼기
				$('input[name=r_image]').val(image_text);
			})

		})
		function wrapBackground() {

			var maskHeight = $('.modal-dialog').height();
			var maskWidth = $(window).width();
			//alert("maskHeight:"+maskHeight)
			$('.modal-backdrop').css({
				'width' : maskWidth,
				'height' : maskHeight
			}).trigger("resize");

		}
	</script>
</body>
</html>