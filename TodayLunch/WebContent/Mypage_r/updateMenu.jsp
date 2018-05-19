<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Title here -->
<title>메뉴 편집 - 오늘의 점심</title>
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
.necessary{
	color: #f75353;
}

td>input{
	width:80%;
	margin-right:10%;
}

#newMenu{
	width:50%;
}
</style>
</head>

<body>

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
				<h2 class="white">메뉴 편집</h2>
				<ol class="breadcrumb">
					<li><a href="index.html">메인</a></li>
					<li><a href="/TodayLunch/Mypage_r/myPage.lunch">마이 페이지</a></li>
					<li class="active">메뉴 편집</li>
				</ol>
				<div class="clearfix"></div>
			</div>
		</div>

		<!-- Banner End -->



		<!-- Inner Content -->
		<div class="inner-page padd">

			<!-- Single Item Start -->

			<div class="single-item">
				<div class="container">
					<!-- Shopping single item contents -->
					<div class="single-item-content">
						<!-- Heading -->
						<h3 class="single-item-content-header">${menuList[0].r_name}의
							메뉴 : ${dateList[0]}~${dateList[4]}</h3>
						<div class="row">
							<div class="col-md-4 col-sm-12">
								<!-- Single item details -->
								<div class="item-details col-md-6">
									<!-- Heading -->
									<h5 style="color:#513629">${dateList[0]}:</h5>
									<!-- Recipe ingredients -->
									<ul class="list-unstyled">
										<c:forEach var="content" items="${m_arrayList[0]}">
											<c:if test="${content!='' }">
												<li>${content}</li>
											</c:if>
											<c:if test="${content=='' }">
												<li>등록된 메뉴가<br>없습니다.
												</li>
											</c:if>
										</c:forEach>
									</ul>
								</div>
								<!-- Single item details -->
								<div class="item-details col-md-6">
									<!-- Heading -->
									<h5 style="color:#513629">${dateList[1]}:</h5>
									<!-- Recipe ingredients -->
									<ul class="list-unstyled">
										<c:forEach var="content" items="${m_arrayList[1]}">
											<c:if test="${content!='' }">
												<li>${content}</li>
											</c:if>
											<c:if test="${content=='' }">
												<li>등록된 메뉴가<br>없습니다.
												</li>
											</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>
							<!-- 왼쪽 메뉴 종료-->
							<div class="col-md-4 col-sm-12">
								<!-- Heading -->
								<!--날짜-->
								<div>
									<button class="btn" type="button" id="prev_date" style="background-color:#ccccff;color:#513629;border-radius:20px;">전</button>
									<h5 id="date" style="display: inline;color:#513629">${dateList[2]}:</h5>
									<button class="btn" type="button" id="next_date" style="background-color:#ffcc33;color:#513629;border-radius:20px;">후</button>
								</div>
								<!-- Form inside table wrapper -->
								<div class="table-responsive" style="border-color:#F2EFE9">
									<!-- Ordering form -->
									<form role="form" method="post" name="updateMenuform"
										action="/TodayLunch/Mypage_r/updateMenuPro.lunch">
										<input type="hidden" name="r_name"
											value="${menuList[2].r_name}"> <input type="hidden"
											name="date" value="${dateList[2]}">
										<!-- Table:메뉴 적는 리스트 -->
										<table class="table table-bordered" id="contentTable" style="background-color:#E7C1BA;border:2px solid #F5E95D " >

											<c:if test="${m_countList[2]!=0 }">
												<c:forEach var="content" items="${m_arrayList[2]}"
													varStatus="status">
													<tr class="contentList">
														<td style="border-color:#F5E95D"><input type="text" name="content${status.index}"
															value="${content}"> <input type="hidden"
															name="m_count" value="${status.count}"></td>
													</tr>
												</c:forEach>
											</c:if>
											<c:if test="${m_countList[2]==0 }">
												<input type="hidden" name="m_count" value="${m_countList[2]}">
											</c:if>
											<tr bgcolor="#E7C1BA ">
												<td><div class="form-group">
														<input type="text" id="newMenu">
														<button type="button" class="btn" id="addMenu" 
														style="background-color:#A22B2A;color:#fff;border-radius:20px">추가</button>
													</div></td>
											</tr>
											<tr>
												<td><div class="form-group">
														<button type="reset"class="btn" style="background-color:#6C702F;color:#fff;border-radius:20px">다시 작성</button>
														<button type="submit" class="btn" style="background-color:#F5E95D;color:#513629;border-radius:20px">수정하기</button>
													</div></td>
											</tr>
										</table>
									</form>
									<!--/ Table End-->
								</div>
								<!--/ Table responsive class end -->
							</div>
							<div class="col-md-4 col-sm-12">
								<!-- Single item details:메뉴 보여주는 창 -->
								<div class="item-details col-md-6">
									<!-- Heading -->
									<h5 style="color:#513629">${dateList[3]}:</h5>
									<!-- Recipe ingredients -->
									<ul class="list-unstyled">
										<c:forEach var="content" items="${m_arrayList[3]}">
											<c:if test="${content!='' }">
												<li>${content}</li>
											</c:if>
											<c:if test="${content=='' }">
												<li>등록된 메뉴가<br>없습니다.
												</li>
											</c:if>
										</c:forEach>
									</ul>
								</div>
								<!-- Single item details -->
								<div class="item-details col-md-6">
									<!-- Heading -->
									<h5 style="color:#513629">${dateList[4]}:</h5>
									<!-- Recipe ingredients -->
									<ul class="list-unstyled">
										<c:forEach var="content" items="${m_arrayList[4]}">
											<c:if test="${content!='' }">
												<li>${content}</li>
											</c:if>
											<c:if test="${content=='' }">
												<li>등록된 메뉴가<br>없습니다.
												</li>
											</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>
							<!-- 오른쪽 메뉴 종료 -->
						</div>
						<!--/ Inner row end  -->
					</div>
				</div>
				<div class="single-item-end"></div>
			</div>
			<!-- Single Item End -->
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
	<!-- datepicker용  -->
	<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>

	<!-- JS code for this page -->
	<script>
		$(function() {

			$(".inner-page").on("click", "#prev_date", function() {
				//alert($("#date").text().substr(0, 10))
				var day = stringTodate($("#date").text().substr(0, 10))
				day.setDate(day.getDate() - 1) //하루 전 날짜로
				var dayformat = $.datepicker.formatDate('yy-mm-dd', day) //String으로 바꾸기
				$("#date").text(dayformat + " :")
				postMenuofDate(dayformat)
			})

			$(".inner-page").on("click", "#next_date", function() {
				var day = stringTodate($("#date").text().substr(0, 10))
				day.setDate(day.getDate() + 1) //하루 뒤 날짜로
				var dayformat = $.datepicker.formatDate('yy-mm-dd', day) //String으로 바꾸기
				$("#date").text(dayformat + " :")
				postMenuofDate(dayformat)
			})

			$(".inner-page").on("click", "button[type='submit']", function(event) {
				var check=0
				/* $('.contentList input').each(function(){
					if($(this).val()==""){
						alert("빈 칸이 있습니다.")
						$(this).focus()
						check=1
						return false
					}
				}) */
				var m_count = $(".contentList").length
				$("input[name='m_count']").val(m_count)
				//alert($("input[name='m_count']").val())
				if(check==1){
					event.preventDefault()
				}
			})

			$(".inner-page")
					.on(
							"click",
							"#addMenu",
							function(event) {
								if($.trim($("#newMenu").val())==""){
									alert("메뉴를 입력해주세요.")
									$("#newMenu").focus()
									return false
								}
								var menustr = '<tr class="contentList"><td><input type="text" name="content'
								menustr += $(".contentList").length
								menustr += '" value="'
								menustr += $.trim($("#newMenu").val())
								menustr += '"></td></tr>'
								//alert("m_countList[2]:${m_countList[2]}")
								//alert("$('input[name=m_count]').val:"+ $("input[name=m_count]").val())
								var m_count = $("input[name=m_count]").val()
								if (m_count != 0) {
									$(".contentList:last").after(menustr)
								} else {
									$("tr[bgcolor]").before(menustr)
								}
								$("#newMenu").val("")
								//alert("$('.contentList').length:"+ $(".contentList").length)
								$("input[name=m_count]").val($(".contentList").length)
								//alert("set:" + $("input[name=m_count]").val())
								event.preventDefault()
							})
		})

		function stringTodate(datestr) {
			var dstr = datestr.split("-")
			var dd = dstr[2].split(" ")
			var day = new Date(dstr[0], dstr[1] - 1, dd[0])//연 월 일

			return day
		}

		function postMenuofDate(dayformat) {
			$.ajax({
						type : "POST",
						url : '/TodayLunch/Mypage_r/updateMenu.lunch',
						data : {
							date : dayformat
						},
						success : function(response) {
							//console.log($(response).find('.single-item')[0]);
							var m_content=$(response).find('.single-item')[0];
							$('.inner-page').empty().append(m_content);
							/* var startstr = '<div class="inner-page padd">'
							var start = response.indexOf(startstr)
							var startlength = startstr.length
							var end = response.indexOf(
									'<div class="single-item-end"></div>',
									start + startlength)
							var endlength = '<div class="single-item-end"></div>'.length
							//alert("last:"+response.lastIndexOf("</table>")+"\nlast2:"+end)

							var m_content = $.trim(response.substring(start
									+ startlength, end + endlength))
							//alert(m_content)
							//$("#contentTable").html(m_content)
							$(".inner-page").html(m_content) */
							
							//alert(m_content)
							setReadonly();
						},
						error : function(error) {
							alert("postMenuofDate error:" + error);
						}
					})
		}

		function setReadonly() {
			//alert($("#date").text() )
			if ($("#date").text() < $.datepicker.formatDate('yy-mm-dd',
					new Date())) {
				//alert($('input[name^=content]').val())
				$('input[name^="content"]').attr('readonly', 'readonly')
				$('#newMenu').attr('disabled', 'disabled')
				$('#addMenu').attr('disabled', 'disabled')
				$('button[type=submit]').attr('disabled', 'disabled')
				$('button[type=reset]').attr('disabled', 'disabled')
			} else {
				$('input[name^="content"]').removeAttr('readonly')
				$('#newMenu').removeAttr('disabled')
				$('#addMenu').removeAttr('disabled')
				$('button[type=submit]').removeAttr('disabled')
				$('button[type=reset]').removeAttr('disabled')
			}
		}
	</script>
</body>
</html>






