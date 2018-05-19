<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<%-- <% response.setHeader("Cache-Control","no-cache"); //HTTP 1.1 
 response.setHeader("Pragma","no-cache"); //HTTP 1.0 
 response.setDateHeader ("Expires", 0); //prevents caching at the proxy server  
%> --%>
<html>
<head>
<meta charset="utf-8">
<!-- Title here -->
<title>TodayLunch</title>
<!-- Description, Keywords and Author -->
<meta name="description" content="Your description">
<meta name="keywords" content="Your,Keywords">
<meta name="author" content="ResponsiveWebInc">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Styles -->
<!-- Bootstrap CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
<link href="css/settings.css" rel="stylesheet">
<!-- FlexSlider Css -->
<link rel="stylesheet" href="css/flexslider.css" media="screen" />
<!-- Portfolio CSS -->
<link href="css/prettyPhoto.css" rel="stylesheet">
<!-- Font awesome CSS -->
<link href="css/font-awesome.min.css" rel="stylesheet">
<!-- Custom Less -->
<link href="css/less-style.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="css/style.css" rel="stylesheet">
<!--[if IE]><link rel="stylesheet" href="css/ie-style.css"><![endif]-->

<!-- Favicon -->
<link rel="shortcut icon" href="#">
<style>
.flex-container {
	display: flex;
	flex-wrap: wrap;
}

.dishes .img-frame {
	cursor: Auto;
}

.menu-head {
	cursor: pointer;
}
</style>
</head>

<body>




	<!-- Page Wrapper -->
	<div class="wrapper" style="background-color: #F2EFE9;">

		<!-- Header Start -->
		<jsp:include page="top.jsp" />


		<!-- Header End -->

		<!-- Slider Start 
			#################################
				- THEMEPUNCH BANNER -
			#################################	-->

		<div class="tp-banner-container">
			<div class="tp-banner">
				<ul>
					<!-- SLIDE  -->
					<li data-transition="fade" data-slotamount="7"
						data-masterspeed="1500">
						<!-- MAIN IMAGE -첫번째 이미지 --> <img src="img/slider/slide8.jpg"
						alt="" data-bgfit="cover" data-bgposition="center bottom"
						data-bgrepeat="no-repeat"> <!-- LAYERS --> <!-- LAYER NR. 1 -->
						<!--br-red-->
						<div class="tp-caption" data-x="left" data-y="40"
							data-speed="2000" data-start="1200" data-easing="Power4.easeOut"
							data-endspeed="500" data-endeasing="Power4.easeIn"
							style="z-index: 3; background-color: #dea79d"></div> <!-- LAYER NR. 2.0 -->
						<!-- <div class="tp-caption lfl medium_bg_darkblue br-green"
							data-x="20" data-y="200" data-speed="1500" data-start="1800"
							data-easing="Power4.easeOut" data-endspeed="300"
							data-endeasing="Power4.easeIn" data-captionhidden="off">로그인 후 식권 구매 페이지에서 구매</div> LAYER NR. 2.1
						<div class="tp-caption lfl medium_bg_darkblue br-lblue"
							data-x="20" data-y="250" data-speed="1500" data-start="2100"
							data-easing="Power4.easeOut" data-endspeed="500"
							data-endeasing="Power4.easeIn" style="z-index: 3">식당에서 설정한 식권 인증번호 입력</div> LAYER NR. 2.2
						<div class="tp-caption lfl medium_bg_darkblue br-purple"
							data-x="20" data-y="300" data-speed="1500" data-start="2400"
							data-easing="Power4.easeOut" data-endspeed="500"
							data-endeasing="Power4.easeIn" style="z-index: 3">확인 버튼 누르면 사용 가능</div> LAYER NR. 2.3
						<div class="tp-caption lfl medium_bg_darkblue br-orange"
							data-x="20" data-y="350" data-speed="1500" data-start="2700"
							data-easing="Power4.easeOut" data-endspeed="500"
							data-endeasing="Power4.easeIn" style="z-index: 3">사용 내역에서 남은 개수를 확인해보세요!</div>  -->
						<!-- LAYER NR. 3.0 --> <!-- <div class="tp-caption customin customout" data-x="right"
							data-hoffset="-50" data-y="100"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="400" data-start="3600" data-easing="Power3.easeInOut"
							data-endspeed="300" style="z-index: 5">
							<img class="slide-img img-responsive" src="img/slider/s21.png"
								alt="" />
						</div>  --> <!-- LAYER NR. 3.1 --> <!-- 
							<div class="tp-caption customin customout" data-x="right"
							data-hoffset="-120" data-y="130"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="400" data-start="3900" data-easing="Power3.easeInOut"
							data-endspeed="300" style="z-index: 6">
							<img class="slide-img img-responsive" src="img/slider/s22.png"
								alt="" />
						</div> LAYER NR. 3.2
						<div class="tp-caption customin customout" data-x="right"
							data-hoffset="-10" data-y="160"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="400" data-start="4200" data-easing="Power3.easeInOut"
							data-endspeed="300" style="z-index: 7">
							<img class="slide-img img-responsive" src="img/slider/s23.png"
								alt="" />
						</div> LAYER NR. 3.3 --> <!-- <div class="tp-caption customin customout" data-x="right"
							data-hoffset="-80" data-y="190"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="400" data-start="4500" data-easing="Power3.easeInOut"
							data-endspeed="300" style="z-index: 8">
							<img class="slide-img img-responsive" src="img/slider/s24.png"
								alt="" />
						</div> -->
					</li>
					<!--두번째 슬라이드 이미지-->
					<li data-transition="zoomin" data-slotamount="6"
						data-masterspeed="400">
						<!-- MAIN IMAGE --> <img src="img/slider/slide1.jpg"
						style="background-color: #fff" alt="" data-bgfit="cover"
						data-bgposition="center bottom" data-bgrepeat="no-repeat"> <!-- LAYERS -->
						<!-- LAYER NR. 1 --> <!-- <div class="tp-caption sfl modern_medium_light" data-x="20"
							data-y="90" data-speed="800" data-start="1000"
							data-easing="Power4.easeOut" data-endspeed="500"
							data-endeasing="Power4.easeIn" style="z-index: 3"></div> LAYER NR. 1.1
						<div class="tp-caption large_bold_grey heading customin customout"
							data-x="10" data-y="125" data-splitin="chars"
							data-splitout="chars" data-elementdelay="0.05" data-start="1500"
							data-speed="900" data-easing="Back.easeOut"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-endspeed="500" data-endeasing="Power3.easeInOut"
							data-captionhidden="on" style="z-index: 5"></div> LAYER NR. 2
						<div class="tp-caption customin customout" data-x="right"
							data-y="100"
							data-customin="x:50;y:150;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.5;scaleY:0.5;skewX:0;skewY:0;opacity:0;transformPerspective:0;transformOrigin:50% 50%;"
							data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="800" data-start="2000" data-easing="Power4.easeOut"
							data-endspeed="500" data-endeasing="Power4.easeIn"
							style="z-index: 3">
							<img class="img-responsive" src="img/slider/s11.png" alt="" />
						</div> --> <!-- LAYER NR. 2.1 --> <!-- <div class="tp-caption customin customout" data-x="right"
							data-y="100"
							data-customin="x:50;y:150;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.5;scaleY:0.5;skewX:0;skewY:0;opacity:0;transformPerspective:0;transformOrigin:50% 50%;"
							data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="800" data-start="2300" data-easing="Power4.easeOut"
							data-endspeed="500" data-endeasing="Power4.easeIn"
							style="z-index: 3">
							<img class="img-responsive" src="img/slider/s12.png" alt="" />
						</div> LAYER NR. 2.2
						<div class="tp-caption customin customout" data-x="right"
							data-y="100"
							data-customin="x:50;y:150;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.5;scaleY:0.5;skewX:0;skewY:0;opacity:0;transformPerspective:0;transformOrigin:50% 50%;"
							data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="800" data-start="2600" data-easing="Power4.easeOut"
							data-endspeed="500" data-endeasing="Power4.easeIn"
							style="z-index: 3">
							<img class="img-responsive" src="img/slider/s13.png" alt="" />
						</div> LAYER NR. 2.3 --> <!-- <div class="tp-caption sft" data-x="right" data-hoffset="-400"
							data-y="80" data-speed="1000" data-start="3000"
							data-easing="Power4.easeOut" data-endspeed="500"
							data-endeasing="Power4.easeIn" style="z-index: 10; top:-300px;left:-40px;"> -->
						<div class="tp-caption sft" data-x="center" data-hoffset="-10"
							data-y="center" data-y="20" data-speed="1000" data-start="3000"
							data-easing="Power4.easeOut" data-endspeed="500"
							data-endeasing="Power4.easeIn"
							style="z-index: 10; top: -300px; left: -40px;">
							<span class="price-tag br-white"
								style="background-color: #F5E95D;"> <a class="btn"
								href="/TodayLunch/Rest/restList.lunch"
								style="opacity: 1; color: #513629; top: -50px;">SEE LIST</a>
							</span>
						</div> <!-- LAYER NR. 3 -->
						<div
							class="tp-caption finewide_verysmall_white_mw paragraph customin customout tp-resizeme"
							data-x="20" data-y="210"
							data-customin="x:0;y:50;z:0;rotationX:-120;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 0%;"
							data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="1000" data-start="3600"
							data-easing="Power3.easeInOut" data-splitin="lines"
							data-splitout="lines" data-elementdelay="0.2"
							data-endelementdelay="0.08" data-endspeed="300"
							style="z-index: 10; max-width: auto; max-height: auto; white-space: nowrap;">
						</div> <!-- LAYER NR. 4 슬라이드 안에 버튼-->
						<div class="tp-caption sfb" data-x="20" data-y="335"
							data-speed="800" data-start="4500" data-easing="Power4.easeOut"
							data-endspeed="500" data-endeasing="Power4.easeIn"
							style="z-index: 11"></div>
					</li>
					<li data-transition="slidehorizontal" data-slotamount="1"
						data-masterspeed="600">
						<!-- MAIN IMAGE 슬라이드 3번째 #fea501--> <img
						src="img/slider/transparent.png" style="background-color: #E7C1BA"
						alt="" data-bgfit="cover" data-bgposition="center bottom"
						data-bgrepeat="no-repeat"> <!-- LAYERS NR. 1 -->
						<div class="tp-caption lfl" data-x="left" data-y="-90"
							data-hoffset="-100" data-speed="800" data-start="1200"
							data-easing="Power4.easeOut" data-endspeed="300"
							data-endeasing="Linear.easeNone" data-captionhidden="off">
							<img class="img-responsive" src="img/slider/slide11.jpg" alt=""
								style="width: 600px; height: 900px;" />
						</div> <!-- LAYERS NR. 2 -->
						<div class="tp-caption lfr large_bold_grey heading white"
							data-x="right" data-hoffset="-10" data-y="120" data-speed="800"
							data-start="2000" data-easing="Power4.easeOut"
							data-endspeed="300" data-endeasing="Linear.easeNone"
							data-captionhidden="off"></div> <!-- LAYER NR. 3 => 왼쪽으로 옮길때 hoffset을 -높은 숫자 -->
						<div class="tp-caption" data-x="right" data-hoffset="-80"
							data-y="60" data-voffset="100"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="700" data-start="2300" data-easing="Power3.easeInOut"
							data-splitin="none" data-splitout="none" data-elementdelay="0.1"
							data-endelementdelay="0.1" data-endspeed="500"
							style="z-index: 3; max-width: auto; max-height: auto; white-space: nowrap; color: #513629; font-weight: bold; font-size: 20px; text-align: center;">
							&nbsp;
							<h3>HOW TO USE IT?</h3>
							<br> 1. 로그인 후 식권 구매 <br> 2. 원하는 식당에서 아이디와 <br>인증
							번호 입력 후 사용 <br> 3. 맛있게 먹기:)<br> * 사용 내역에서 사용한 식권 또는<br>
							남은 개수 확인 가능해요!

						</div> <!-- LAYER NR. 4 -->
						<div
							class="tp-caption finewide_medium_white randomrotate customout tp-resizeme"
							data-x="right" data-hoffset="-10" data-y="245" data-voffset="0"
							data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="1000" data-start="2700"
							data-easing="Power3.easeInOut" data-splitin="chars"
							data-splitout="chars" data-elementdelay="0.08"
							data-endelementdelay="0.08" data-endspeed="500"
							style="z-index: 4; max-width: auto; max-height: auto; white-space: nowrap;">
						</div> <!-- LAYER NR. 5 -->
						<div
							class="tp-caption finewide_verysmall_white_mw white customin customout tp-resizeme text-right paragraph"
							data-x="right" data-hoffset="-10" data-y="300"
							data-customin="x:0;y:50;z:0;rotationX:-120;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 0%;"
							data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="1000" data-start="3500"
							data-easing="Power3.easeInOut" data-splitin="lines"
							data-splitout="lines" data-elementdelay="0.2"
							data-endelementdelay="0.08" data-endspeed="300"
							style="z-index: 10; max-width: auto; max-height: auto; white-space: nowrap;">
						</div>
					</li>
					<li data-transition="cube" data-slotamount="7"
						data-masterspeed="600">
						<!-- MAIN IMAGE 슬라이드 4 --> <img src="img/slider/slide2.jpg" alt=""
						data-bgfit="cover" data-bgposition="center bottom"
						data-bgrepeat="no-repeat"> <!-- LAYERS NR. 1 모니터 -->
						<div class="tp-caption lfl" data-x="110" data-y="130"
							data-speed="800" data-start="1500" data-easing="Power4.easeOut"
							data-endspeed="300" data-endeasing="Power4.easeIn"
							data-captionhidden="off">
							<img src="img/slider/monitor.png" class="img-responsive" alt="" />
						</div> <!-- LAYERS NR. 2 테블랫 -->
						<div class="tp-caption lfl" data-x="80" data-y="265"
							data-speed="800" data-start="2200" data-easing="Power4.easeOut"
							data-endspeed="300" data-endeasing="Power4.easeIn"
							data-captionhidden="off">
							<img src="img/slider/tab.png" class="img-responsive" alt="" />
						</div> <!-- LAYERS NR. 3 핸드폰-->
						<div class="tp-caption lfl" data-x="450" data-y="312"
							data-speed="800" data-start="2700" data-easing="Power4.easeOut"
							data-endspeed="300" data-endeasing="Power4.easeIn"
							data-captionhidden="off">
							<img src="img/slider/phone.png" class="img-responsive" alt="" />
						</div> <!-- LAYERS NR. 4 -->
						<div class="tp-caption sfr  thinheadline_dark white"
							data-x="right" data-hoffset="-10" data-y="90" data-speed="800"
							data-start="3200" data-easing="Power4.easeOut"
							data-endspeed="500" data-endeasing="Power4.easeIn"
							style="z-index: 3"></div> <!-- LAYERS NR. 4.1 -->
						<div class="tp-caption lfr largepinkbg br-green" data-x="right"
							data-hoffset="-10" data-y="135" data-speed="800"
							data-start="3500" data-easing="Power4.easeOut"
							data-endspeed="300" data-endeasing="Linear.easeNone"
							data-captionhidden="off"></div> <!-- LAYERS NR. 5 -->
						<div
							class="tp-caption skewfromright medium_text text-right paragraph"
							data-x="right" data-hoffset="-10" data-y="225" data-speed="800"
							data-start="3800" data-easing="Power4.easeOut"
							data-endspeed="400" data-endeasing="Power4.easeOut"
							data-captionhidden="off"></div> <!-- LAYERS NR. 6 // -->

					</li>
				</ul>
				<!-- Banner Timer -->
				<div class="tp-bannertimer"></div>
			</div>
		</div>
		<!-- Slider End -->



		<!-- Main Content -->
		<div class="main-content" style="background-color: #F2EFE9;">

			<!-- Showcase Start -->

			<div class="showcase"></div>

			<!-- Showcase End -->

			<!-- Dishes Start -->

			<div class="dishes padd">
				<div class="container">
					<!-- Default Heading -->
					<div class="default-heading">
						<!-- Crown image -->
						<img class="img-responsive" src="img/crown.png" alt="" />
						<!-- Heading -->
						<h2 style="color: #513629; font-weight: bold;">오늘의 점심은?</h2>
						<!-- Paragraph -->
						<p style="color: #513629;">이럴 때 사용하세요!</p>
						<!-- Border -->
						<div class="border"></div>
					</div>
					<div class="row">
						<div class="col-md-3 col-sm-6" style="background-color: #F2EFE9;">
							<div class="dishes-item-container">
								<!-- Image Frame -->
								<div class="img-frame">
									<!-- Image -->
									<img src="img/dish/work1.jpg" class="img-responsive" alt="" />
									<!-- Block for on hover effect to image -->
									<!-- <div class="img-frame-hover">
										Hover Icon
										<a href="#"><i class="fa fa-cutlery"></i></a>
									</div> -->
								</div>
								<!-- Dish Details -->
								<div class="dish-details">
									<!-- Heading -->
									<h3 style="color: #513629;">
										강남에서 일하는<br>당신
									</h3>
									<!-- Paragraph -->

									<!-- Button -->

								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="dishes-item-container">
								<!-- Image Frame -->
								<div class="img-frame">
									<!-- Image -->
									<img src="img/dish/work4.jpg" class="img-responsive" alt="" />
									<!-- Block for on hover effect to image -->
									<!-- <div class="img-frame-hover">
										Hover Icon
										<a href="#"><i class="fa fa-cutlery"></i></a>
									</div> -->
								</div>
								<!-- Dish Details -->
								<div class="dish-details">
									<!-- Heading -->
									<h3 style="color: #513629;">
										또 다시 점심시간!<br>&nbsp;
									</h3>
									<!-- Paragraph -->

								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="dishes-item-container">
								<!-- Image Frame -->
								<div class="img-frame">
									<!-- Image -->
									<img src="img/dish/work3.jpg" class="img-responsive" alt="" />
									<!-- Block for on hover effect to image -->
									<!-- <div class="img-frame-hover">
										Hover Icon
										<a href="#"><i class="fa fa-cutlery"></i></a>
									</div> -->
								</div>
								<!-- Dish Details -->
								<div class="dish-details">
									<!-- Heading -->
									<h3 style="color: #513629;">
										맛집이 뭐냐,<br>귀찮기만 하고..
									</h3>
									<!-- Paragraph -->

								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="dishes-item-container">
								<!-- Image Frame -->
								<div class="img-frame">
									<!-- Image -->
									<img src="img/dish/work2.jpg" class="img-responsive" alt="" />
									<!-- Block for on hover effect to image -->
									<!-- <div class="img-frame-hover">
										Hover Icon
										<a href="#"><i class="fa fa-cutlery"></i></a>
									</div> -->
								</div>
								<!-- Dish Details -->
								<div class="dish-details">
									<!-- Heading -->
									<h3 style="color: #513629;">
										급식같은 거<br>어디 없나?
									</h3>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Dishes End -->

			<!-- menu Start -->

			<div class="menu padd">
				<div class="container">
					<!-- Default Heading -->
					<div class="default-heading">
						<!-- Crown image -->
						<img class="img-responsive" src="img/crown.png" alt="" />
						<!-- Heading -->
						<h2 style="color: #513629; font-weight: bold">Menu</h2>
						<!-- Paragraph -->
						<!-- 오늘 날짜 출력 -->
						<p style="color: #513629;">${date}의&nbsp;메뉴</p>
						<!-- Border -->
						<div class="border"></div>
					</div>
					<!-- Menu content container -->
					<div class="menu-container">
						<div class="row flex-container">
							<!-- 오늘 날짜로 등록된 메뉴가 있을 때 -->
							<c:if test="${allMenuSize!=0 }">
								<c:forEach var="mainMenu" items="${allMenu}" varStatus="status">
									<div class="col-md-4 col-sm-4">
										<!-- Menu header -->
										<!-- 식당 소개 페이지 링크 -->
										<%-- <a href="/TodayLunch/Rest/showRest.lunch?r_name=${mainMenu.r_name}"> --%>
										<div class="menu-head"
											onClick="location.href='/TodayLunch/Rest/showRest.lunch?r_name=${mainMenu.r_name}'">
											<!-- Image for menu item -->
											<img class="menu-img img-responsive img-thumbnail"
												src="${r_img0List[status.index] }" alt="" />
											<!-- Menu title / Heading -->
											<!-- 식당 이름 출력 -->
											<h3 style="color: #fff;">${mainMenu.r_name}</h3>
											<!-- Border for above heading -->
											<div class="title-border" style="border-bottom:3px solid #E7C1BA"></div>
										</div>
										<!-- </a> -->
										<!-- Menu item details -->
										<div class="menu-details" style="background-color:#E7C1BA;border-color:#6C702F">
											<!-- Menu list -->
											<ul class="list-unstyled">
												<c:forEach var="m_array" items="${m_arrayList}"
													begin="${status.index}" end="${status.index}">
													<%-- <c:out value="${status.index}"/> --%>
													<c:forEach var="menu" items="${m_array }">
														<li>
															<div class="menu-list-item">
																<!-- Icon -->
																<!-- 해당 식당의 메뉴를 하나씩 출력 -->
																<i class="fa fa-angle-right"></i> 
																<a style="color:#513629">${menu}</a>
															</div>
														</li>
													</c:forEach>
													<div class="clearfix"></div>
												</c:forEach>
											</ul>
										</div>
										<!-- / Menu details end -->
									</div>
								</c:forEach>
							</c:if>
							<!-- 오늘 날짜로 등록된 메뉴가 없을 때 -->
							<c:if test="${allMenuSize==0 }">
								<div class="col-md-12 col-sm-12">

									<h2 class="text-center" style="color: #513629;">등록된 메뉴가 없습니다.</h2>

								</div>
							</c:if>


						</div>
					</div>
					<!-- /Menu container end -->
				</div>
			</div>

			<!-- Menu End -->

			<!-- Pricing Start -->



			<!-- Pricing End -->

			<!-- Chefs Start -->

			<div class="chefs padd">
				<div class="container">
					<!-- Default Heading -->
					<div class="default-heading">
						<!-- Crown image -->
						<img class="img-responsive" src="img/crown.png" alt="" />
						<!-- Heading -->
						<h2 style="color: #513629; font-weight: bold">개발자들</h2>
						<!-- Paragraph -->
						<p style="color: #513629;">KIC 캠퍼스(2017.11~2018.5)</p>
						<!-- Border -->
						<div class="border"></div>
					</div>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							<!-- Chef Member -->
							<div class="chefs-member">
								<!-- Chefs member header -->
								<div class="chefs-head">
									<!-- Member background image -->
									<img class="chefs-back img-responsive"
										src="img/sky.jpg" alt="" />
									<!-- chef member image -->
									<img class="chefs-img img-responsive" src="img/user1.jpg"
										alt="" />
								</div>
								<!--Name / Heading -->
								<h3 style="color: #513629; font-weight: bold">
									<a href="#">김지혜</a>
								</h3>
								<!-- Member designation -->
								<span>로그인/개인 회원 마이페이지</span>
								<!-- Social media links -->
								<div class="social">
									<a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
									<a href="#" class="google-plus"><i
										class="fa fa-google-plus"></i></a> <a href="#" class="twitter"><i
										class="fa fa-twitter"></i></a> <a href="#" class="pinterest"><i
										class="fa fa-pinterest"></i></a>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-4">
							<!-- Chef Member -->
							<div class="chefs-member">
								<!-- Chefs member header -->
								<div class="chefs-head">
									<!-- Member background image -->
									<img class="chefs-back img-responsive"
										src="img/sky.jpg" alt="" />
									<!-- chef member image -->
									<img class="chefs-img img-responsive" src="img/user1.jpg"
										alt="" />
								</div>
								<!--Name / Heading -->
								<h3 style="color: #513629; font-weight: bold">
									<a href="#">노인욱</a>
								</h3>
								<!-- Member designation -->
								<span>이메일 인증/관리자 마이페이지</span>
								<!-- Social media links -->
								<div class="social">
									<a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
									<a href="#" class="google-plus"><i
										class="fa fa-google-plus"></i></a> <a href="#" class="twitter"><i
										class="fa fa-twitter"></i></a> <a href="#" class="pinterest"><i
										class="fa fa-pinterest"></i></a>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-4">
							<!-- Chef Member -->
							<div class="chefs-member">
								<!-- Chefs member header -->
								<div class="chefs-head">
									<!-- Member background image -->
									<img class="chefs-back img-responsive"
										src="img/sky.jpg" alt="" />
									<!-- chef member image -->
									<img class="chefs-img img-responsive" src="img/user1.jpg"
										alt="" />
								</div>
								<!--Name / Heading -->
								<h3 style="color: #513629; font-weight: bold">
									<a href="#">문희경</a>
								</h3>
								<!-- Member designation -->
								<span>리뷰</span>
								<!-- Social media links -->
								<div class="social">
									<a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
									<a href="#" class="google-plus"><i
										class="fa fa-google-plus"></i></a> <a href="#" class="twitter"><i
										class="fa fa-twitter"></i></a> <a href="#" class="pinterest"><i
										class="fa fa-pinterest"></i></a>
								</div>
							</div>
						</div>
						<!-- 인물소개 두번째 -->
						<div class="col-md-4 col-md-offset-2 col-sm-4 col-sm-offset-2">
							<!-- Chef Member -->
							<div class="chefs-member">
								<!-- Chefs member header -->
								<div class="chefs-head">
									<!-- Member background image -->
									<img class="chefs-back img-responsive"
										src="img/sky.jpg" alt="" />
									<!-- chef member image -->
									<img class="chefs-img img-responsive" src="img/user1.jpg"
										alt="" />
								</div>
								<!--Name / Heading -->
								<h3 style="color: #513629; font-weight: bold">
									<a href="#">이고우나</a>
								</h3>
								<!-- Member designation -->
								<span>식당 회원 마이페이지</span>
								<!-- Social media links -->
								<div class="social">
									<a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
									<a href="#" class="google-plus"><i
										class="fa fa-google-plus"></i></a> <a href="#" class="twitter"><i
										class="fa fa-twitter"></i></a> <a href="#" class="pinterest"><i
										class="fa fa-pinterest"></i></a>
								</div>
							</div>
						</div>

						<div class="col-md-4   col-sm-4">
							<!-- Chef Member -->
							<div class="chefs-member">
								<!-- Chefs member header -->
								<div class="chefs-head">
									<!-- Member background image -->
									<img class="chefs-back img-responsive"
										src="img/sky.jpg" alt="" />
									<!-- chef member image -->
									<img class="chefs-img img-responsive" src="img/user1.jpg"
										alt="" />
								</div>
								<!--Name / Heading -->
								<h3 style="color: #513629; font-weight: bold">
									<a href="#">한희원</a>
								</h3>
								<!-- Member designation -->
								<span>회원가입</span>
								<!-- Social media links -->
								<div class="social">
									<a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
									<a href="#" class="google-plus"><i
										class="fa fa-google-plus"></i></a> <a href="#" class="twitter"><i
										class="fa fa-twitter"></i></a> <a href="#" class="pinterest"><i
										class="fa fa-pinterest"></i></a>
								</div>
							</div>
						</div>


					</div>
				</div>
			</div>

			<!-- Chefs End -->




		</div>
		<!-- / Main Content End -->

		<!-- Footer Start -->

		<jsp:include page="footer.jsp"></jsp:include>


		<!-- 페이지는 그대로인체 특정 이벤트를 발생시 전면에 페이지가 나오게 하는 형태 시작 -->
		<span style="left:10px;position: fixed;bottom:10px;"><a id="notice_check" data-toggle="modal" href="#shoppingcart1"
			class="btn" style="background-color:#A22B2A;color:#fff;border-radius:20px;">공지사항</a>
	</span>

		<!-- Footer End -->

		<div class="modal fade" id="shoppingcart1" tabindex="-1" role="dialog"
			aria-hidden="false" style="display: blcok;">
			<div class="modal-dialog"  style="background-color:#F2EFE9;">
				<div class="modal-content">
					<div class="modal-header"  style="background-color:#F2EFE9;">
						<h2>공지사항</h2>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
					</div>
					<div class="modal-body" style="background-color:#F2EFE9;border-top:2px solid #E7C1BA">
						<!-- Items table -->
						<table class="table">
							<thead>
								<tr>
									<th  style="color:#513629;">제목</th>
									<th>내용</th>
									<th>작성일</th>
								</tr>
							</thead>
							<tbody id="notice">

							</tbody>
						</table>


					</div>
					<!-- <div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Continue Shopping</button>
						<button type="button" class="btn btn-info">Checkout</button>
					</div> -->
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>

		<!-- 여기까지가 전면 부부부부부분 -->




	</div>
	<!-- / Wrapper End -->


	<!-- Scroll to top -->
	<span class="totop"><a href="#"><i class="fa fa-angle-up" 
	style="background: #A22B2A;"></i></a></span>



	<!-- Javascript files -->
	<!-- jQuery -->
	<script src="js/jquery.js"></script>
	<!-- Bootstrap JS -->
	<script src="js/bootstrap.min.js"></script>
	<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
	<script type="text/javascript"
		src="js/jquery.themepunch.plugins.min.js"></script>
	<script type="text/javascript"
		src="js/jquery.themepunch.revolution.min.js"></script>
	<!-- FLEX SLIDER SCRIPTS  -->
	<script defer src="js/jquery.flexslider-min.js"></script>
	<!-- Pretty Photo JS -->
	<script src="js/jquery.prettyPhoto.js"></script>
	<!-- Respond JS for IE8 -->
	<script src="js/respond.min.js"></script>
	<!-- HTML5 Support for IE -->
	<script src="js/html5shiv.js"></script>
	<!-- Custom JS -->
	<script src="js/custom.js"></script>
	<!-- JS code for this page -->
	<script>
		/* ******************************************** */
		/*  JS for SLIDER REVOLUTION  */
		/* ******************************************** */
		jQuery(document).ready(function() {
			jQuery('.tp-banner').revolution({
				delay : 9000,
				startheight : 500,

				hideThumbs : 10,

				navigationType : "bullet",

				hideArrowsOnMobile : "on",

				touchenabled : "on",
				onHoverStop : "on",

				navOffsetHorizontal : 0,
				navOffsetVertical : 20,

				stopAtSlide : -1,
				stopAfterLoops : -1,

				shadow : 0,

				fullWidth : "on",
				fullScreen : "off"
			});

			//*****************************
			//여기서부터 공지사항 ajax 사용
			var check = 0;
			$('#notice_check').click(function() {

				if (check == 0) {
					$.ajax({
						url : "notice.lunch",
						success : function(data) {
							$.each(data.list, function() {
								var notice = "<tr><td>";
								notice += this.no_num + "</td><td>";
								notice += this.no_content + "</td><td>";
								notice += this.no_time + "</td></tr>";
								$('#notice').append(notice);
								check = 1;
							})
						}
					})
				}
			})

		})
		/* ******************************************** */
		/*  JS for FlexSlider  */
		/* ******************************************** */

		$(window).load(function() {
			$('.flexslider-recent').flexslider({
				animation : "fade",
				animationSpeed : 1000,
				controlNav : true,
				directionNav : false
			});
			$('.flexslider-testimonial').flexslider({
				animation : "fade",
				slideshowSpeed : 5000,
				animationSpeed : 1000,
				controlNav : true,
				directionNav : false
			});
		});

		/* Gallery */

		jQuery(".gallery-img-link").prettyPhoto({
			overlay_gallery : false,
			social_tools : false
		});

		
		$(function() {
			//resizeFont();
			//$('img .menu-img').on('load', function(){resizeFont()});
			$(window).load(function() {resizeFont();})
			$(window).resize(function() {
				resizeFont();
			})
		})
		//윈도우 크기가 바뀔 때마다 메인의 식당 이름 폰트 사이즈도 변경하기
		function resizeFont() {
			//alert("resizeFont")
			$('.menu-head h3').each(function(index) {
				var h3textlength = $(this).text().length;
				var divwidth = $(this).width();
				if (h3textlength < 4) {
					divwidth = $(this).width() * 0.4;
					/*$(this).css({
						"font-size" : divwidth / h3textlength + "px"
					}); */
				} else if (h3textlength < 8) {
					divwidth = $(this).width() * 0.8;
				} else {
					//divwidth=$(this).width()*0.9;
				}
				//alert($(this).height())
				var marginTop = divwidth / h3textlength;
				$(this).next().css({
					"width" : $(this).width() * 0.6 + "px",
					"margin-left" : $(this).width() * -0.3 + "px",
					"margin-top" : marginTop / 2 + "px",
					
				})
				$(this).css({
					"top" : "30px",
					"height" : $(this).parent().height() + "px",
					"line-height" : $(this).parent().height() + "px",
					"font-size" : marginTop + "px"
				}); 
			})

		}
	</script>
</body>
</html>