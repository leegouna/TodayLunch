<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-2.1.3.js"></script>
<title>리뷰 목록</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	 <style>
	.col-md-4.star {height:30px}
	</style>
	<script>
	/* $(document).ready(function(){ */
	 function review_modify(re_num){
		$.ajax({
			url:"../Review/reviewUpdate.lunch?re_num="+re_num+"&pageNum=${pgList.currentPage}",
			success:function(result){
			//alert(result)
			  //$('li[id='+re_num+']').html(result)
			  var startStr='<div class="respond well">';
			  var endStr='</div></div>';
			  var endStrLength=endStr.length;
			 // alert(result.indexOf(startStr)+", "+(result.lastIndexOf(endStr)+endStrLength));
			  var respond = result.substring(result.indexOf(startStr), result.lastIndexOf(endStr)+endStrLength);
			 // alert(respond);
			  $('li[id='+re_num+']').html(respond);
			  
			  $('.kv-fa').rating({
			        hoverOnClear: false,
			        theme: 'krajee-fa'
			    });
		}
		})	 
	}
	
	function review_delete(re_num){
		if (confirm("진짜 지움?")){
			$.ajax({
				url:'/TodayLunch/Review/reviewDeletePro.lunch?p_id=${s_id}&r_name=${r_name}&re_num='+re_num+'&pageNum=${pgList.currentPage}',
				success:function(){
					location.href="/TodayLunch/Rest/showRest.lunch?r_name=${r_name}";
				}
			})
			}else{
				return;
			}		
		}
	/* })	 */

</script>
	</head>	
	<body>
	<span class="pull-right"><i class="fa fa-comment"></i> 
	&nbsp;${pgList.count} Comments</span>
	<div class="title"><h5>후기</h5>	
	</div>
	<%-- <div class="text-right"><a href="/TodayLunch/reviewWrite.lunch?r_name=${r_name}">쓰기</a></div> --%>

<c:if test="${count==0}">
<table width="700" cellpadding="0" cellspacing="0" align="center">
 <tr>
 	<td align="center">저장된 리뷰가 없습니다.</td>
 </tr>
</table></c:if>

<c:if test="${pgList.count>0}">
<c:set var="number" value="${pgList.number+1}"/>
<c:forEach var="article" items="${review}"> 
  <c:set var="number" value="${number-1}"/>
		<ul class="comment-list">
			<li class="comment" id="${article.re_num}">
			 <div class="col-md-10">
			 	<div class="num"><c:out value="${number}"/></div>
			 	<div class="col-md-4 star"><img src="../img/star/${article.re_star}.JPG"></a></div>
					<div class="col-md-offset-5 col-md-3 cmeta">
				<fmt:formatDate value="${article.re_time}" timeStyle="medium" pattern="yy.MM.dd(hh:mm)"/></div>
				</div><p>
				<div class="col-md-10 content"><p>${article.re_content}</p></div>
			
				<div class="col-md-2" align="right">
				<c:if test="${p_id!=null && s_id==article.p_id}">
				<span class="label label-success"><a href="javascript:review_modify(${article.re_num});">고쳐</a></span></c:if>
				<c:if test="${s_id==article.p_id || s_id=='admin'}">
				<span id="delete" class="label label-default"><a href="javascript:review_delete(${article.re_num});">지워</a></span></c:if>				
				</div>		
				<div class="clearfix"></div>
			</li>
		</ul>
		<div class="clearfix"></div>

<input type="hidden" name="p_id" value="${article.p_id}">
<input type="hidden" name="r_name" value="${article.r_name}">
<input type="hidden" name="pageNum" value="${pgList.pageNum}">
 </c:forEach>					
</c:if>			
		
</body>

</html>