<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style>
/* Always set the map height explicitly to define the size of the div
 * element that contains the map. */
#map {
	height: 400px;
	width: 100%;
}

/* Optional: Makes the sample page fill the window. */
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}
</style>
</head>
<body>
	<div id="map"></div>
	<!-- 매개변수로 받은 위도, 경도 테스트 -->
	<%-- <h4>${param.r_wi}, ${param.r_gy}</h4> --%><%-- 
	<input type="hidden" name="r_wi" id="r_wi" value="${param.r_wi}">
	<input type="hidden" name="r_gy" id="r_gy" value="${param.r_gy}"> --%>
	
	<script>
	var map;
	var marker;
	//구글맵 API
	function initMap() {
	  var myLatlng = new google.maps.LatLng(${param.r_wi}, ${param.r_gy});
	  var myOptions = {
	    zoom: 17,
	    center: myLatlng,
	    mapTypeId: google.maps.MapTypeId.ROADMAP
	  }
	  map = new google.maps.Map(document.getElementById("map"), myOptions);
		//입력받은 위도와 경도로 마커를 지도에 생성
	  marker = new google.maps.Marker({
	    position: myLatlng,
	    map: map
	  });
		
		//지도 클릭시
	  google.maps.event.addListener(map, 'click', function(event) {
		  //alert(event.latLng.lat())//클릭한 위치로 좌표 변경
		  document.getElementById("r_wi").value=event.latLng.lat()
		  document.getElementById("r_gy").value=event.latLng.lng()
		  //alert(document.getElementById("r_wi").value+", "+document.getElementById("r_gy").value)
	    marker.setPosition(event.latLng);	//바뀐 좌표로 마커 이동
	    map.setCenter(event.latLng);	//바뀐 좌표를 중앙점으로 하도록 지도 이동
	  });
	}

	</script>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCVlODe5vr86imNiC2k01MLD47VLU8kqFM&callback=initMap">
		
	</script>
</body>
</html>