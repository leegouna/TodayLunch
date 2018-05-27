<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>정보찾기</title>

<meta name="description" content="Your description">
<meta name="keywords" content="Your,Keywords">
<meta name="author" content="ResponsiveWebInc">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Styles -->
<!-- Bootstrap CSS -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
<link href="../css/settings.css" rel="stylesheet">
<!-- FlexSlider Css -->
<link rel="stylesheet" href="../css/flexslider.css" media="screen" />
<!-- Portfolio CSS -->
<link href="../css/prettyPhoto.css" rel="stylesheet">
<!-- Font awesome CSS -->
<link href="../css/font-awesome.min.css" rel="stylesheet">
<!-- Custom Less -->
<link href="../css/less-style.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="../css/style.css" rel="stylesheet">


<!-- 스타일시트 끝 -->

<!-- 스크립트 , 부트스트랩 -->

<script src="../js/jquery.js"></script>
<!-- Bootstrap JS -->
<script src="../js/bootstrap.min.js"></script>
<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
<script type="text/javascript"
	src="../js/jquery.themepunch.plugins.min.js"></script>
<script type="text/javascript"
	src="../js/jquery.themepunch.revolution.min.js"></script>
<!-- FLEX SLIDER SCRIPTS  -->
<script defer src="../js/jquery.flexslider-min.js"></script>
<!-- Pretty Photo JS -->
<script src="../js/jquery.prettyPhoto.js"></script>
<!-- Respond JS for IE8 -->
<script src="../js/respond.min.js"></script>
<!-- HTML5 Support for IE -->
<script src="../js/html5shiv.js"></script>
<!-- Custom JS -->
<script src="../js/custom.js"></script>





</head>
<body>
<c:if test="${empty requestScope.result}">
	<div class="component-content">
	
		<h3 style="margin-left:20px;">정보찾기</h3>

		<ul id="myTab" class="nav nav-tabs" style="margin:5px;">
			<li class="active"><a href="#ID" data-toggle="tab"
				aria-expanded="true">ID찾기</a></li>
			<li class=""><a href="#PASS" data-toggle="tab"
				aria-expanded="false">PASSWORD찾기</a></li>

		</ul>
		<div id="myTabContent" class="tab-content" style="margin-top:10px;">
			<div class="tab-pane fade active in" id="ID">
				<form method="post" action="forget_Info.lunch">
					<h4 style="color:#513629;margin:5px;">
					찾으시려는 아이디의<br>이메일정보를 적어주세요.</h4>
					<br> <input type="email" name="email"
						placeholder="이메일을 적어주세요" style="margin:10px;"> 
						<input type="submit" value="찾기" style="background-color:#F5E95D;color:#513629;border-radius:20px;border:2px solid #ccccff">

				</form>
				
			</div>

			<div class="tab-pane fade" id="PASS">

				<form method="post" action="forget_Info.lunch">
<h4 style="color:#513629;margin-top:5px;margin-bottom:5px;">
					찾으시려는 아이디와<br>이메일정보를 적어주세요.</h4><br> 
					<input type="text" name="id" 
						placeholder="아이디를 적어주세요" style="margin:10px;"><br> <input type="email"
						name="email" placeholder="이메일을 적어주세요" style="margin:10px;"> <input
						type="submit" value="찾기" style="background-color:#F5E95D;color:#513629;border-radius:20px;border:2px solid #ccccff;">

				</form>
				
				
				

			</div>

		</div>
	</div>
	
	</c:if>
	
<c:if test="${not empty requestScope.result}">
<font style="margin:5px;color:#513629 ">
<h3>${result}</h3>
<button onclick="history.back()" style="background:#E7C1BA;color:#513629;border-radius:20px;border:2px solid #ccccff;">Back</button></font>
				</c:if>


	<!-- ID찾기 부분 -->
	<!-- <form method="post" action="TodayLunchSpring/Login/forget_Info.lunch">

찾으시려는 아이디의 이메일정보를 적어주세요.<br>
<input type="email" name="email" placeholder="이메일을 적어주세요">
<input type="submit" value="찾기">

</form> -->
	

</body>
</html>