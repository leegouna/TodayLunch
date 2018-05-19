<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<c:if test="${check==1}">
<meta http-equiv="Refresh" 
            content="0;url=/TodayLunch/Rest/showRest.lunch?r_name=${r_name}&pageNum=${pageNum}">
</c:if>
<c:if test="${check==0}">
     <script>
        alert("안고쳐진당")
        history.go(-1);//history.back()
     </script>
</c:if>