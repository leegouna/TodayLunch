<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>고치장</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
.inner-page .respond .title {
	margin-bottom: 20px;
}

.inner-page .respond .form-group .comment {
	margin-top: 0px
}
</style>
</head>
<body>
<div class="respond well">
	<div class="title">
		<h5>고칩시당</h5></div>
		<div class="form">
			<form class="form-horizontal" role="form" action="/TodayLunch/Review/reviewUpdatePro.lunch?r_name=${r_name}&pageNum=${pageNum}">
				<input type="hidden" name="p_id" value="${review.p_id}">
				<input type="hidden" name="re_num" value="${review.re_num}">
				<input type="hidden" name="r_name" value="${review.r_name}">
				<input type="hidden" name="pageNum" value="${pageNum}">
			<div class="form-group">
			<label class="control-label col-lg-2" for="re_star"></label>
			<div class="col-lg-10">
				<input type="text" class="kv-fa rating-loading" value="${review.re_star}" data-size="xs" name="re_star"><br></div>
			<label class="control-label col-lg-2" for="re_content"></label>
			<div class="col-lg-10">
				<textarea class="form-control" id="comment" rows="3" name="re_content">${review.re_content}</textarea><br></div>
			<div class="col-lg-offset-2 col-lg-10">
				<button id="submit" type="submit" class="btn btn-danger btn-sm">ㄱㄱ</button>	&nbsp;
				<button type="reset" class="btn btn-default btn-sm">다시 쓸게</button></div>
			</div>
			</form>
		</div></div>	
</body>
<script>
 $(document).on('ready', function(){
    $('.kv-fa').rating({
        hoverOnClear: false,
        theme: 'krajee-fa'
    });
});                 
</script>
</html>    