<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Top</title>

<style type="text/css">
.logo, .menu-item{
	cursor:pointer;
}
</style>

</head>
<body>

		<div class="header"   style="background-color:#F2EFE9;">
				<div class="container">
					<!-- Header top area content -->
					<div class="header-top">
						<div class="row">
							
							<div class="col-md-4 col-md-offset-8 col-sm-4 col-sm-offset-8">
								<!-- Header top right content search box -->
								<div class=" header-search">
									<form class="form" role="form" action="/TodayLunch/Search/searchResult.lunch">
										<div class="input-group">
										  <input type="text" class="form-control" name="searchWord" placeholder="Search...">
										  <span class="input-group-btn">
											<button class="btn btn-default" type="submit" style="height:32px"><i class="fa fa-search"></i></button>
										  </span>
										</div>
									</form>
								</div>
							</div>
							
						</div>
					</div>
					<div class="row">
						<div class="col-md-4 col-sm-5">
							<!-- Link -->
							<!-- <a href="/TodayLunch/main.lunch"> -->
								<!-- Logo area -->
								<div class="logo" onClick="location.href='/TodayLunch/main.lunch'">
									<img class="img-responsive" src="/TodayLunch/img/logo.png" alt="">
									<!-- Heading -->
									<h1 style="color:#513629;font-family: 'Binggrae-Bold';">Today Lunch</h1>
									<!-- Paragraph -->
									<p  style="font-family:'Binggrae';">강남역 주변의 점심 뷔페 메뉴</p>
								</div>
							<!-- </a> -->
						</div>
						<div class="col-md-8 col-sm-7">
							<!-- Navigation -->
							<nav class="navbar navbar-default navbar-right" role="navigation">
								<div class="container-fluid">
									<!-- Brand and toggle get grouped for better mobile display -->
									<div class="navbar-header">
										<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
											<span class="sr-only">Toggle navigation</span>
											<span class="icon-bar"></span>
											<span class="icon-bar"></span>
											<span class="icon-bar"></span>
										</button>
									</div>
									
									<!-- Session test -->
									<%-- <input type="text" value="${sessionScope.s_id }">
									<input type="text" value="${sessionScope.grade }"> --%>
									
									<!-- 세션s_id값이 없을경우 -->
									<c:if test="${empty(sessionScope.s_id)}">
									<!-- Collect the nav links, forms, and other content for toggling -->
									<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
										<ul class="nav navbar-nav">
											
											
											<li><a href="/TodayLunch/Rest/restList.lunch"><img src="/TodayLunch/img/nav-menu/nav3.jpg" class="img-responsive" alt=""> Shop List</a></li>
											
											<li>
												<a href="/TodayLunch/Login/login.lunch"><img src="/TodayLunch/img/nav-menu/nav5.jpg" class="img-responsive" alt=""> Login </a>
												
											</li>
											<li><a href="/TodayLunch/Register/registerintro.lunch"><img src="/TodayLunch/img/nav-menu/nav7.jpg" class="img-responsive" alt=""> Register</a></li>
										</ul>
									</div><!-- /.navbar-collapse -->
									<!-- 세션값 없을경우 끝 -->
									</c:if>
									<!-- 세션s_id값이 있을경우 -->
									<c:if test="${not empty(sessionScope.s_id)}">
									
									<!-- 세션 등급(grade값이 관리자일경우) 1일경우 -->
									<c:if test="${sessionScope.grade==1}">
									<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
										<ul class="nav navbar-nav">
										
										
											
																						<li><a href="/TodayLunch/Rest/restList.lunch"><img src="/TodayLunch/img/nav-menu/nav3.jpg" class="img-responsive" alt=""> Shop List</a></li>
											
											<li><a href="/TodayLunch/Admin/myPage.lunch"><img src="/TodayLunch/img/nav-menu/nav3.jpg" class="img-responsive" alt="">
											 AdminPage</a></li>
											
											
											<li><a href="/TodayLunch/Login/logout.lunch"><img
											src="/TodayLunch/img/nav-menu/nav1.jpg" class="img-responsive" alt="" />
											Logout</a></li>
										</ul>
									</div><!-- /.navbar-collapse -->
									</c:if><!-- 관리자 마이페이지 끝 -->
									
									
									
									<!-- 세션 등급(grade값이 개인회원일경우) 3일경우 -->
									<c:if test="${sessionScope.grade==3}">
									<div class="collapse navbar-collapse"
								id="bs-example-navbar-collapse-1">
								<ul class="nav navbar-nav">
								
									<li><a href="/TodayLunch/Rest/restList.lunch"><img src="/TodayLunch/img/nav-menu/nav3.jpg" class="img-responsive" alt=""> Shop List</a></li>
									<li><a href="/TodayLunch/Bookmark/bookmarkList.lunch"><img src="/TodayLunch/img/nav-menu/nav1.jpg" class="img-responsive" alt=""> Favorite</a></li>
									<li class="dropdown hidden-xs">
									<a href="/TodayLunch/Mypage_p/myPage.lunch">	
										<img src="/TodayLunch/img/nav-menu/nav2.jpg" class="img-responsive" alt=""  style="margin-bottom:-7px">
										</a>
							<a href="/TodayLunch/Mypage_p/myPage.lunch" class="dropdown-toggle" data-toggle="dropdown" >
								MyPage <b class="caret"></b></a>	
										<ul class="dropdown-menu dropdown-md">
											<li>
												<div class="row">
													<div class="col-md-4 col-sm-4">
														<!-- Menu Item -->
														<div class="menu-item" onClick="location.href='/TodayLunch/Mypage_p/buySik.lunch'">
															<!-- Heading -->
															<h3 style="color:#513629; font-weight:bold">식권 구매</h3>
															<!-- Image -->
															<img src="/TodayLunch/img/dish/modal dish2.jpg" class="img-responsive"
																alt="" width="150px" height="150px" />
															<!-- Button -->
															<a href="/TodayLunch/Mypage_p/buySik.lunch" class="btn btn-danger btn-xs"
															style="background-color:#F5E95D;color:#513629;border-color:#E7C1BA">
															<b>Buy</b></a>
														</div>
													</div>
													
													<!--회원 수정-->
													<div class="col-md-4 col-sm-4">
														<!-- Menu Item -->
														<div class="menu-item" onClick="location.href='/TodayLunch/Mypage_p/updateInfo.lunch'">
															<!-- Heading -->
															<h3 style="color:#513629; font-weight:bold">회원 수정</h3>
															<!-- Image -->
															<img src="/TodayLunch/img/dish/modal dish1.jpg" class="img-responsive"
																alt="" width="150px" height="150px"  />
															<!-- Button -->
															<a href="/TodayLunch/Mypage_p/updateInfo.lunch" class="btn btn-danger btn-xs"
															style="background-color:#F5E95D;color:#513629;border-color:#E7C1BA;">
															<b>Go</b></a>
														</div>
													</div>
													<div class="col-md-4 col-sm-4">
														<!-- Menu Item -->
														<div class="menu-item" onClick="location.href='/TodayLunch/Mypage_p/sikInfo.lunch'">
															<!-- Heading -->
															<h3 style="color:#513629; font-weight:bold">사용 내역</h3>
															<!-- Image -->
															<img src="/TodayLunch/img/dish/modal dish3.jpg" class="img-responsive"
																alt="" width="150px" height="150px" />
															<!-- Button -->
															<a href="/TodayLunch/Mypage_p/sikInfo.lunch" class="btn btn-danger btn-xs"
															style="background-color:#F5E95D;color:#513629;border-color:#E7C1BA;">
															<b>Check</b></a>
														</div>
													</div>
												</div>
											</li>
										</ul></li>
									<li class="dropdown visible-xs"><a href="#"
										class="dropdown-toggle" data-toggle="dropdown"> My Page <b
											class="caret"></b></a>
										<ul class="dropdown-menu">
											<li><a href="/TodayLunch/Mypage_p/buySik.lunch" style="color:#513629; font-weight:bold">식권 구매</a></li>
											<li><a href="/TodayLunch/Mypage_p/updateInfo.lunch" style="color:#513629; font-weight:bold">회원 수정</a></li>
											<li><a href="/TodayLunch/Mypage_p/sikInfo.lunch" style="color:#513629; font-weight:bold">사용 내역</a></li>
										</ul></li>
									<li><a href="/TodayLunch/Login/logout.lunch"><img
											src="/TodayLunch/img/nav-menu/nav1.jpg" class="img-responsive" alt="" />
											Logout</a></li>
								</ul>
							</div>
									</c:if><!-- 개인마이페이지 끝 -->
									
									
									<!-- 세션 등급(grade값이 식당회원일경우)2일경우 -->
									<c:if test="${sessionScope.grade==2}">
									<div class="collapse navbar-collapse"
								id="bs-example-navbar-collapse-1">
								<ul class="nav navbar-nav">
									<li><a href="/TodayLunch/Rest/restList.lunch"><img src="/TodayLunch/img/nav-menu/nav3.jpg" class="img-responsive" alt=""> Shop List</a></li>
									<li class="dropdown hidden-xs">
									<a href="/TodayLunch/Mypage_r/myPage.lunch">	
										<img src="/TodayLunch/img/nav-menu/nav2.jpg" class="img-responsive" alt=""  style="margin-bottom:-7px">
										</a>
							<a href="/TodayLunch/Mypage_r/myPage.lunch" class="dropdown-toggle" data-toggle="dropdown" >
								MyPage <b class="caret"></b></a>	
										<ul class="dropdown-menu dropdown-md">
											<li>
												<div class="row">
													<div class="col-md-4 col-sm-4">
														<!-- Menu Item -->
														<div class="menu-item"  onClick="location.href='/TodayLunch/Mypage_r/useSik.lunch'">
															<!-- Heading -->
															<h3 style="color:#513629; font-weight:bold">식권 사용</h3>
															<!-- Image -->
															<img src="/TodayLunch/img/dish/modal dish2.jpg" class="img-responsive"
																alt="" width="150px" height="150px" />
															<!-- Button -->
															<a href="/TodayLunch/Mypage_r/useSik.lunch" class="btn btn-danger btn-xs">Use</a>
														</div>
													</div>
													
													<!--회원 수정-->
													<div class="col-md-4 col-sm-4">
														<!-- Menu Item -->
														<div class="menu-item"  onClick="location.href='/TodayLunch/Mypage_r/updateInfo.lunch'">
															<!-- Heading -->
															<h3 style="color:#513629; font-weight:bold">회원 수정</h3>
															<!-- Image -->
															<img src="/TodayLunch/img/dish/modal dish1.jpg" class="img-responsive"
																alt="" width="150px" height="150px"  />
															<!-- Button -->
															<a href="/TodayLunch/Mypage_r/updateInfo.lunch" class="btn btn-danger btn-xs">Go</a>
														</div>
													</div>
													<div class="col-md-4 col-sm-4">
														<!-- Menu Item -->
														<div class="menu-item" onClick="location.href='/TodayLunch/Mypage_r/sikInfo.lunch'">
															<!-- Heading -->
															<h3 style="color:#513629; font-weight:bold">매출 내역</h3>
															<!-- Image -->
															<img src="/TodayLunch/img/dish/modal dish3.jpg" class="img-responsive"
																alt="" width="150px" height="150px" />
															<!-- Button -->
															<a href="/TodayLunch/Mypage_r/sikInfo.lunch" class="btn btn-danger btn-xs">Check</a>
														</div>
													</div>
												</div>
											</li>
										</ul></li>
									<li class="dropdown visible-xs"><a href="#"
										class="dropdown-toggle" data-toggle="dropdown"> My Page <b
											class="caret"></b></a>
										<ul class="dropdown-menu">
											<li><a href="/TodayLunch/Mypage_r/useSik.lunch" style="color:#513629; font-weight:bold">식권 사용</a></li>
											<li><a href="/TodayLunch/Mypage_r/updateInfo.lunch" style="color:#513629; font-weight:bold">정보 수정</a></li>
											<li><a href="/TodayLunch/Mypage_r/sikInfo.lunch" style="color:#513629; font-weight:bold">식권 매출 내역</a></li>
										</ul></li>
									
									<li><a href="/TodayLunch/Login/logout.lunch"><img
											src="/TodayLunch/img/nav-menu/nav1.jpg" class="img-responsive" alt="" />
											Logout</a></li>
								</ul>
							</div>
									</c:if><!-- 식당마이페이지 끝 -->
									</c:if>
									<!-- 세션값 있을경우 끝 -->
									
								</div><!-- /.container-fluid -->
							</nav>
						</div>
					</div>
				</div> <!-- / .container -->
			</div>

</body>
</html>