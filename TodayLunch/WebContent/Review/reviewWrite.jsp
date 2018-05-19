<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>게시판</title>
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
	<div class="form">
		<form class="form-horizontal" role="form" action="/TodayLunch/Review/reviewWritePro.lunch">	
			<input type="hidden" name="r_name" value="${r_name}">
				<div class="form-group">
					<label class="control-label col-lg-2" for="re_star"></label>
						<div class="col-lg-10">        
					        <input type="text" class="kv-fa rating-loading" value="0" data-size="xs" name="re_star"><br></div>
					<label class="control-label col-lg-2" for="re_content"></label>
						<div class="col-lg-10">
							<textarea class="form-control" id="re_content" name="re_content" rows="3" placeholder="끄적끄적"></textarea><br></div>
						<div class="col-lg-offset-2 col-lg-10">
							<button type="submit" id="submit" class="btn btn-danger btn-sm">ㄱㄱ</button>	&nbsp;
							<button type="reset" class="btn btn-default btn-sm">다시 쓸게</button></div>
				</div>
		</form>
	</div>
</body>
<script>
     jQuery(document).on('ready', function () {       
        $('.kv-fa').rating({
            theme: 'krajee-fa',
            filledStar: '<i class="fa fa-star"></i>',
            emptyStar: '<i class="fa fa-star-o"></i>'
        });        
        });

        $('.kv-fa').on(
                'change', function () {
                    console.log('Rating selected: ' + $(this).val());
                });  
</script>
</html>
