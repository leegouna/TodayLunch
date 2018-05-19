<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>식권 구매 pro</title>
</head>
<body>
  		<div class="container">
  	<c:if test="${check==true}">
  		<table class="buyokay">
  			<tr>
  			<%-- <td>정상적으로 수정 되었습니다.</td>
  			<c:redirect url="/main.lunch"/> --%>
  			<script>
  				alert("정상적으로 구매 되었습니다.")
  				location.href="/TodayLunch/Mypage_p/myPage.lunch"
  			</script>
  			</tr>
  		</table>
   </c:if>
   
   <c:if test="${check != true}">
  		<table class="buyerror">
  		 <tr>
  			<script>
  			alert("다시 확인 해주세요")
  			history.back()</script>
  		 </tr>
  		</table>
  		</c:if>
  	</div>
  
</body>
</html>






