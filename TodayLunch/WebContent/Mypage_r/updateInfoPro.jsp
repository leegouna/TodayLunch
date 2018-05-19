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
  정보수정처리 페이지
  <c:if test="${check>0}">
  <script type="text/javascript">
  alert("수정되었습니다.")
  location.href="/TodayLunch/Mypage_r/myPage.lunch"
  </script>
  </c:if>
  
  <c:if test="${check==0}">
  <script type="text/javascript">
  alert("수정에 실패했습니다.\n다시 시도해주세요.")
  history.back();
  </script>
  </c:if>
  
</body>
</html>






