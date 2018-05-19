<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
<meta charset="utf-8">
<!-- Title here -->
<title>Register</title>
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
				<img class="img-responsive" src="../img/crown-white.png" alt="">
				<!-- Heading -->
				<h2 class="white">개인 회원가입</h2>
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
					<h4>개인 회원가입</h4>
					<div class="row">
						<div class="col-md-7 col-sm-6">
							<!-- Checkout Form -->
							<!-- <form class="form-horizontal" role="form" name="regForm" method="post" action="/TodayLunchSpring2/register/registerPro.lunch"> -->
							<form class="form-horizontal" role="form" name="regForm" method="post">
								<div class="form-group">

									<label for="inputName" class="col-md-2 control-label">아이디</label>
									<div class="col-md-8">
										<input type="text" class="form-control" id="p_id" name="p_id" placeholder="아이디"  style="width:40%" > 
										<input type="hidden" id="idcheck" value="${check}" >
										<div style="position : absolute; left:200px; top:3px">
										<input type="button" value="ID중복확인" id="doublecheck" onclick = "checkID()" style="background-color:#F5E95D;color:#513629;border-radius:20px;border:2px solid #E7C1BA;">
										<span id="chkMsg"></span><!-- 추가 -->
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail1" class="col-md-2 control-label">비밀번호</label>
									<div class="col-md-8">
										<input type="password" class="form-control" id="p_passwd"
											name="p_passwd" placeholder="비밀번호를 입력하세요"  style="width:70%">
									</div>
								</div>
								<div class="form-group">
									<label for="inputPhone" class="col-md-2 control-label">비밀번호
										확인</label>
									<div class="col-md-8">
										<input type="password" class="form-control" id="p_passwd2"
											name="p_passwd2" placeholder="비밀번호를 확인합니다" style="width:70%">
									</div>
								</div>
								<div class="form-group">
									<label for="inputCountry" class="col-md-2 control-label">이메일</label>
									<div class="col-md-8">
										<input type="text" class="form-control" id="p_email"
											    name="p_email" placeholder="이메일을 입력하세요" style="width:70%">
									</div>
								</div>
								<div class="form-group">
									<label for="inputAddress" class="col-md-2 control-label">이름</label>
									<div class="col-md-8">
										<input type="text" class="form-control" id="p_name"
											name="p_name" placeholder="고객실명을 입력하세요" style="width:70%">
									</div>
								</div>
								<div class="form-group">
									<label for="inputZip" class="col-md-2 control-label">식권
										인증번호</label>
									<div class="col-md-8">
										<input type="text" class="form-control" id="p_siknum"
											name="p_siknum" placeholder="인증번호를 입력하세요" style="width:70%">
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-offset-2 col-md-8">
										<div class="checkbox">
											<label> <input type="checkbox" name="agree"  onclick="agreement()"> 회원정보 입력동의
											</label>
										</div>
									</div>
								</div>
								<!--버튼1  -->
								<div class="col-md-offset-2 col-md-8">
									<a id="notice_check" class="btn" onclick="inputCheck()" style="background-color:#E7C1BA;color:#513629;border-radius:20px;">회원가입</a>&nbsp; 
									<input type="reset"class="btn " value="다시쓰기"  style="background-color:#6C702F;color:#fff;border-radius:20px;">
								</div>


							</form>
						</div>

						<!-- 페이지는 그대로인체 특정 이벤트를 발생시 전면에 페이지가 나오게 하는 형태 시작 -->

						<!-- Footer End -->

						<!-- 재확인창 -->
						<div class="modal fade" id="shoppingcart1" tabindex="-1"
							role="dialog" aria-hidden="true" style="display: blcok;">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h2>개인정보입력 재확인</h2>
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">×</button>
									</div>
									<div class="modal-body">
										<!-- Items table -->
										<form name="regForm2" method="post" action="TodayLunchSpring2/Register/register.lunch" >
											<table class="table table-striped">
												<div class="col-md-7 col-sm-12">
													<!-- Single item details -->
													<div class="item-details">
														<!-- Paragraph -->
														<p class="text-justify">입력하신 정보를 다시 한번 확인해주세요</p>
														<!-- Heading -->
														<h5 class='imsi'>${p_name}님회원가입하시겠습니까?</h5>
													</div>
												</div>

												<tbody>
													<tr>
														<td>아이디</td>
														<td><input type="text" name="p_id" id="p_id2"
															value="${p_id}"></td>
													</tr>
													<tr>
														<td>패스워드</td>
														<td><input type="password" name="p_passwd"
															id="p_passwd3" value="${p_passwd}"></td>
													</tr>
													<tr>
														<td>이름</td>
														<td><input type="text" name="p_name" id="p_name2"
															value="${p_name}"></td>
													</tr>
													<tr>
														<td>이메일</td>
														<td><input type="text" name="p_email" id="p_email2"
															value="${p_email}"></td>
													</tr>
													<tr>
														<td>식권 인증번호</td>
														<td><input type="text" name="p_siknum" id="p_siknum2"
															value="${p_siknum}"></td>
													</tr>
													<tr>
														<td>&nbsp;</td>
														<td>
															<!--버튼2 -->
															<div class="form-group">
																<a type="button" id="notice_check2"
																	class="btn" style="background-color:#E7C1BA;color:#513629;border-radius:20px;">확인 완료</a>
																<input type="reset" data-toggle="modal" href="#" class="btn btn-danger"
																	data-dismiss="modal"  value="다시 쓰기">
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
						
						
			<!--  //여기부터 내가 만들 슬라이드쇼 영역 시작-->
						<div class="col-md-5 col-sm-6">
							<!-- Checkout sidebar items -->
							<div class="sidebar-item">
								<!-- Heading -->
								<h5 class="pull-left">간편하게 선택하는 점심!</h5>
								<!-- Sidebar content icon -->
								<i class="fa fa-truck br-green pull-right"></i>
								<div class="clearfix"></div>
								<!-- Sidebar Paragraph -->
								<p>메뉴확인하러 멀리갈 필요 없어요~
										mylunch에서 그날의 메뉴확인하고, 
										먹고싶은 점심을 드세요!</p>
							</div>
							<!-- Checkout sidebar items -->
							<div class="sidebar-item">
								<!-- Heading -->
								<h5 class="pull-left">식권구매 / 30%할인中</h5>
								<!-- Sidebar content icon -->
								<i class="fa fa-headphones br-red pull-right"></i>
								<div class="clearfix"></div>
								<!-- Sidebar Paragraph -->
								<p>7일/10일/30일 식권구매 30% 할인 event 진행중!
										</p>
						</div>
					</div>
					<!--  //여기까지 내가 만들 슬라이드쇼 영역 끝 -->
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
				$('.imsi').text($('#p_name').val() + "님 회원가입하시겠습니까?")
				$('#p_id2').val($('#p_id').val())
				$('#p_passwd3').val($('#p_passwd').val())
				$('#p_name2').val($('#p_name').val())
				$('#p_email2').val($('#p_email').val())
				$('#p_siknum2').val($('#p_siknum').val())
			})			
		})

	 	$(function() {
			$('#notice_check2').click(function() {
				$.ajax({url:"/TodayLunch/Register/register.lunch",
					type:'post',
					data:{
							p_id:$('#p_id').val(),
							p_passwd:$('#p_passwd').val(),
							p_name:$('#p_name').val(),
							p_email:$('#p_email').val(),
							p_siknum:$('#p_siknum').val()
					
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
				location='/TodayLunch/Login/login.lunch';
			});
		});
		
		//실시간중복체크 테스트
		function checkID(){
			$("#idcheck").attr("value", "idCheckOK");
			
			var p_id =$('#p_id').val();
			
			if($("#p_id").val() == ''){
				 alert('아이디 입력후 중복확인 버튼을 클릭하세요!!'); 
				 return ;
			
			}else{
			 $.ajax({
				 url:"/TodayLunch/Register/register=.lunch",
				 type:"post",
				 data:{'p_id':p_id},
				 success:function(data){
					 var check=$(data).find('#idcheck').val();
					 alert(check);
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
			};//바깥else
		};
		
		function agreement(){
			var chk= $('input:checkbox[name="agree"]').is(":checked");
		}
			
		</script>
</body>
</html>
