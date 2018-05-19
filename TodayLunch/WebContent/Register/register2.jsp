<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
<meta charset="utf-8">
<!-- Title here -->
<title>식당 회원가입 - 오늘의 점심</title>
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
<style>
.holder img{
	margin : 15px 0px;
	width : 80%;
}
</style>
</head>
<body>
<!-- Image File Modal -->
						<div class="modal fade" id="inputRestImage"
							role="dialog" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">&times;</button>
										<h4 class="modal-title">사진 찾기</h4>
									</div>
									<div class="modal-body text-center">
										<form class="form-horizontal" role="form" id="updateImageform"
											enctype="multipart/form-data" method="post">
											<div class="form-group">
												<h4>파일 선택을 눌러 메인에 쓰일 사진을 골라주세요.</h4>
												<input type="file" name="image_text0" class="form-control"
													style="width: 50%; display: inline-block" accept="image/*">
												<div class="holder">
													<img src="../img/restaurant/r_img0.PNG">
												</div>
											</div>
											<hr>
											<div class="form-group">
												<h4>파일 선택을 눌러 식당 목록에 쓰일 사진을 골라주세요.</h4>
												<input type="file" name="image_text1" class="form-control"
													style="width: 50%; display: inline-block" accept="image/*">
												<div class="holder">
													<img src="../img/restaurant/r_img1.PNG">
												</div>
											</div>
											<hr>
											<div class="form-group">
												<h4>파일 선택을 눌러 식당 소개에 쓰일 사진을 골라주세요.</h4>
												<input type="file" name="image_text2" class="form-control"
													style="width: 50%; display: inline-block" accept="image/*">
												<div class="holder">
													<img src="../img/restaurant/r_img2.PNG">
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-danger"
													data-dismiss="modal">확인</button>
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
					<img class="img-responsive" src="../img/crown-white.png" alt="">
					<!-- Heading -->
					<h2 class="white">식당 회원가입</h2>
					<ol class="breadcrumb">
						<li><a href='/TodayLunchSpring2/main.lunch'>Home</a></li>
						<li><a href="./register.lunch">개인 회원가입</a></li>
						<li><a href="./register2.lunch">식당 회원가입</a></li>
					</ol>
					<div class="clearfix"></div>
				</div>
			</div>
			
			<!-- Banner End -->



		<!-- Inner Content -->
		<div class="inner-page padd">

			<div class="Checkout">
				<div class="container">
					<!--Heading  -->
					<h4>식당 회원가입</h4>
					<div class="row">
						<div class="col-md-7 col-sm-6">
							<!-- Checkout Form -->
							<form class="form-horizontal" role="form" name="regForm"
								id="regForm" method="post">
								<input type="hidden" name="r_wi" id="r_wi"
									value="37.4979306950027"> <input type="hidden"
									name="r_gy" id="r_gy" value="127.027552303124">

								<div class="form-group">

									<label for="inputName" class="col-md-2 control-label">아이디</label>
									<div class="col-md-8">
										<input type="text" class="form-control" id="r_id" name="r_id"
											placeholder="아이디를 입력해주세요" style="width: 40%"> <input
											type="hidden" id="idcheck" value="${check}">
										<div style="position: absolute; left: 200px; top: 3px">
											<input type="button" value="ID중복확인" id="doublecheck"
												onclick="checkID()" style="background-color:#F5E95D;color:#513629;border-radius:20px;border:2px solid #E7C1BA;">
												 <span id="chkMsg"  ></span>
											<!-- 추가 -->
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail1" class="col-md-2 control-label">비밀번호</label>
									<div class="col-md-8">
										<input type="password" class="form-control" id="r_passwd"
											name="r_passwd" placeholder="비밀번호를 입력하세요" style="width: 70%">
									</div>
								</div>
								<div class="form-group">
									<label for="inputPhone" class="col-md-2 control-label">비밀번호
										확인</label>
									<div class="col-md-8">
										<input type="password" class="form-control" id="r_passwd2"
											name="r_passwd2" placeholder="비밀번호를 확인합니다" style="width: 70%">
									</div>
								</div>
								<div class="form-group">
									<label for="inputCountry" class="col-md-2 control-label">이메일</label>
									<div class="col-md-8">
										<input type="text" class="form-control" id="r_email"
											name="r_email" placeholder="이메일을 입력하세요" style="width: 70%">
									</div>
								</div>
								<div class="form-group">
									<label for="inputAddress" class="col-md-2 control-label">연락처</label>
									<div class="col-md-8">
										<input type="text" class="form-control" id="r_phone"
											name="r_phone" placeholder="연락처를 적어주세요" style="width: 70%">
									</div>
								</div>

										
								<!-- 식당정보 -->
								
								<div class="form-group">
									<label for="inputCountry" class="col-md-2 control-label">식당이름</label>
									<div class="col-md-8">
										<input type="text" class="form-control" id="r_name"
											name="r_name" placeholder="식당이름을 입력하세요" style="width:48%">
											<!-- 식당이름 중복확인 -->
										<div style="position : absolute; left:220px; top:3px">
										<input type="button" value="중복확인" id="restcheck" onclick = "checkRes()" 
										style="background-color:#F5E95D;color:#513629;border-radius:20px;border:2px solid #ccccff;">
										<input type="hidden" name="namecheck" id="namecheck" value="${namecheck}" size="30">
										<span id="chkMsg2"></span><!-- 추가 -->
									</div>
									</div>
									</div>
									<!--식당 주소-->
								<div class="form-group">
									<label for="inputCountry" class="col-md-2 control-label">식당주소</label>
									<div class="col-md-8">
										<input type="text" class="form-control" id="r_add"
											name="r_add" placeholder="식당주소를 입력하세요" style="width: 70%">
									</div>
								</div>

								<div class="form-group">
									<label for="inputCountry" class="col-md-2 control-label">식당소개</label>
									<div class="col-md-8">
										<textarea class="form-control" id="r_info" name="r_info"
											style="width: 70%"></textarea>
									</div>
								</div>

								<div class="form-group">
									<div class="col-md-offset-2 col-md-8">
										<div class="checkbox">
											<label> <input type="checkbox" id="agree" name="agree"> 회원정보 입력동의
											</label>
										</div>
									</div>
								</div>

								<!--버튼1 -->
								<div class="col-md-offset-2 col-md-8">
									<a id="notice_check" class="btn"
										onclick="javascript:inputCheck2()" style="background-color:#E7C1BA;color:#513629;border-radius:20px;">회원가입</a>&nbsp; <input
										type="reset" class="btn" value="다시쓰기"
										onclick="goReload()" style="background-color:#6C702F;color:#fff;border-radius:20px;">
								</div>

							</form>
						</div>

						<!-- 페이지는 그대로인체 특정 이벤트를 발생시 전면에 페이지가 나오게 하는 형태 시작 -->

						<!-- Footer End -->

						<!-- 재확인창 -->
						<div class="modal fade" id="shoppingcart1" tabindex="-1"
							role="dialog" aria-hidden="false" style="display: blcok;">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h2>개인정보입력 재확인</h2>
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">×</button>
									</div>
									<div class="modal-body">
										<!-- Items table -->
										<form name="regForm2" method="post"
											action="TodayLunchSpring2/Register/register2.lunch">
											<table class="table table-striped">
												<div class="col-md-7 col-sm-12">
													<!-- Single item details -->
													<div class="item-details">
														<!-- Paragraph -->
														<p class="text-justify">입력하신 정보를 다시 한번 확인해주세요</p>
														<!-- Heading -->
														<h5 class='imsi'>${r_id}님회원가입하시겠습니까?</h5>
													</div>
												</div>

												<tbody>
													<tr>
														<td>아이디</td>
														<td><input type="text" name="r_id" id="r_id2"
															value="${r_id}"></td>
													</tr>
													<tr>
														<td>패스워드</td>
														<td><input type="password" name="r_passwd"
															id="r_passwd3" value="${r_passwd}"></td>
													</tr>
													<tr>
														<td>이메일</td>
														<td><input type="text" name="r_email" id="r_email2"
															value="${r_email}"></td>
													</tr>
													<tr>
														<td>연락처</td>
														<td><input type="text" name="r_phone" id="r_phone2"
															value="${r_phone}"></td>
													</tr>

													<tr>
														<td>식당이름</td>
														<td><input type="text" name="r_name" id="r_name2"
															value="${r_name}"></td>
													</tr>

													<tr>
														<td>식당주소</td>
														<td><input type="text" name="r_add" id="r_add2"
															value="${r_add}"></td>
													</tr>

													<tr>
														<td>식당소개</td>
														<td><input type="text" name="r_info" id="r_info2"
															value="${r_info}"></td>
													</tr>
													<tr>
														<td>&nbsp;</td>
														<td>
															<!--버튼2 -->
															<div class="form-group">
																<a type="button" id="notice_check2"
																	class="btn btn-danger">확인 완료</a> <input type="reset"
																	data-toggle="modal" href="#" class="btn btn-danger"
																	data-dismiss="modal" onclick="goReload()" value="다시 쓰기">
															</div>
														</td>
													</tr>
												</tbody>
											</table>
									</div>
								</div>

								<!-- /.modal-content -->
							</div>
							<!-- /.modal-dialog -->
						</div>

						<!-- 회원가입 성공 메세지창   -->

						<div class="modal fade" id="shoppingcart2" tabindex="-1"
							role="dialog" aria-hidden="false" style="display: blcok;">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h2>회원가입을 축하드립니다.</h2>
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">×</button>
									</div>
									<div class="modal-body">
										<!-- Items table -->
										<table class="table table-striped">
											<form name="regForm3" method="post">
												<tbody>
													<tr>
														<td></td>
														<td id="imsi">회원가입성공! 로그인페이지로 이동합니다</td>

													</tr>
													<tr>
														<!--버튼3 -->
														<td>&nbsp;</td>
														<td>
															<div class="form-group">
																<!-- 여기 -->

																<input type="button" id="loginedong" value="닫기">
															</div>
														</td>
													</tr>
												</tbody>
										</table>
									</div>
								</div>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal-dialog -->
						</div>
						<!--모달3/회원가입 성공창 끝  -->

						

						<!-- 여기까지가 전면 부부부부부분 -->
						<div class="col-md-5 col-sm-6">
							<!-- Checkout sidebar items -->
							<div class="sidebar-item">
								<!-- Heading -->
								<p>식당의 위치</p>
								<br>
								<!-- Sidebar Paragraph -->
								<jsp:include page="../Mypage_r/map.jsp">
									<jsp:param value="37.4979306950027" name="r_wi" />
									<jsp:param value="127.027552303124" name="r_gy" />
								</jsp:include>
								<p>지도를 클릭해서 식당의 위치를 입력해주세요.</p>
							</div>
						</div>
					</div>
				</div>
				<!--Checkout end  -->
			</div>
			<!-- / Inner Page Content End -->

			<!-- Footer Start -->
			<jsp:include page="../footer.jsp"></jsp:include>
			<!-- Footer End -->

			<!--요기  -->
		</div>
	</div>
	<!-- / Wrapper End -->
	<!-- Scroll to top -->
	<span class="totop" style="display: none;"><a href="#"><i
			class="fa fa-angle-up"></i> </a> </span>
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
	<script src="../js/script.js"></script>

			<!--//재확인창에 입력한값 넣어주는 코딩  -->
	<script>
	$(function() {
	
			$('#notice_check').click(function() {
				$('.imsi').text($('#r_id').val() + "님 회원가입하시겠습니까?")
				$('#r_id2').val($('#r_id').val())
				$('#r_passwd3').val($('#r_passwd').val())
				$('#r_email2').val($('#r_email').val())
				$('#r_phone2').val($('#r_phone').val())				
				$('#r_name2').val($('#r_name').val())
				$('#r_add2').val($('#r_add').val())
				$('#r_info2').val($('#r_info').val())
			})
		})
		
		$(function() {//재확인 모달창
			$('#notice_check2').click(function() {
				$.ajax({url:"/TodayLunch/Register/register2.lunch",
					type:"post",
					data:{
						r_id:$('#r_id').val(),
						r_passwd:$('#r_passwd').val(),
						r_email:$('#r_email').val(),
						r_phone:$('#r_phone').val(),
						r_name:$('#r_name').val(),
						r_wi:$('#r_wi').val(),
						r_gy:$('#r_gy').val(),
						r_add:$('#r_add').val(),
						r_info:$('#r_info').val()
						
					},success:function(data){
						$('#shoppingcart1').hide();
					},
					error:function(error){
						alert('에러에러!!'+error)
						$('html').html(error.responseText);
					}})
					$('#shoppingcart2').modal();
			})
		}) 
		
		$(function(){
			$('#loginedong').click(function(){
				location.href='/TodayLunch/Login/login.lunch';
			});
		});
		//실시간 아이디 중복체크 테스트
		function checkID(){
			$("#idcheck").attr("value", "idCheckOK");
			
			var r_id =$('#r_id').val();
			
			if($("#r_id").val() == ''){
				 alert('아이디 입력후 중복확인 버튼을 클릭하세요!!'); 
				 return ; 
				 
			}else{
			 $.ajax({
				 url:"/TodayLunch/Register/register2=.lunch",
				 type:"post",
				 data:{'r_id':r_id},
				 success:function(data){
					 var check=$(data).find('#idcheck').val();
					 if(check=="true"){
						 $('#chkMsg').html("<p style='COLOR:red'>사용불가</p>");       
			            }else{
			                $('#chkMsg').html("<p style='COLOR:blue'>사용가능</p>"); 
					 }
				 },
				 error:function(){
					 alert('에러입니다.');
				 }
			 });//ajax
			};//바깥 else
		};
		
		//실시간 식당이름 중복체크 테스트
		function checkRes(){
			$("#namecheck").attr("value", "nameCheckOK");
		
			var r_name =$('#r_name').val();
			
			 if($("#r_name").val() == ''){
				 alert('식당이름 입력후 중복확인 버튼을 클릭하세요!!'); 
				 return ; 
			 }else{
			 
			 $.ajax({
				 
				 url:"/TodayLunch/Register/register2==.lunch",
				 type:"post",
				 data:{'r_name':r_name},
				 success:function(data){
					 var namecheck=$(data).find('#namecheck').val();
					 if(namecheck=="true"){
						 $('#chkMsg2').html("<p style='COLOR:red'>사용불가</p>");       
			            }else{
			                $('#chkMsg2').html("<p style='COLOR:blue'>사용가능</p>"); 
					 }
				 },
				 error:function(){
					 alert('에러입니다.');
				 	}
			 	});
			 };
		};
		
		function agree(){
			var chk= $('input:checkbox[id="agree"]').is(":checked");
		}
			
	</script>	
</body>
</html>