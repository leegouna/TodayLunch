<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:if test="${check==1}">
<meta http-equiv="Refresh" 
            content="0;url=/TodayLunch/Rest/showRest.lunch?r_name=${r_name}">
</c:if>

<c:if test="${check==0}">
     <script type="text/javascript">
        alert("안지워진당")
        history.go(-1);//history.back()
     </script>
</c:if>


</body>
</html>



