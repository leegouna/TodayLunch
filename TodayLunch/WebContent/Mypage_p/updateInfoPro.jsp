<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>정보수정처리</title>

</head>
<body>
  	<div class="container">
  	<c:if test="${check==true}">
  		<!-- <table class="okay">
  			<tr> -->
  			<%-- <td>정상적으로 수정 되었습니다.</td>
  			<c:redirect url="/main.lunch"/> --%>
  			<script>
  				alert("정상적으로 수정 되었습니다.")
  				location.href="/TodayLunch/main.lunch"
  			</script>
  			<!-- </tr>
  		</table> -->
   </c:if>
   
   <c:if test="${check != true}">
  		<!-- <table class="error">
  		 <tr> -->
  			<script>
  			alert("다시 확인 해주세요")
  			history.back()</script>
  		<!--  </tr>
  		</table> -->
  		</c:if>
  	</div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
</body>
</html>






