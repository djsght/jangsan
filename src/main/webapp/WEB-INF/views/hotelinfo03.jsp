<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>태백호텔 > 호텔소개 > 오시는길</title>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
</head>
<script type="text/javascript">
</script>
<body>
	<div class="forward hotel-info">
		<div class='container'>
			<ul class="tab-bar">
				<li><a href="/hotelinfo01">인사말</a></li>
				<li><a href="/hotelinfo02">이용안내</a></li>
				<li class="active"><a href="javascript:;">오시는길</a></li>
			</ul>
		</div>
	</div>
	<main>
		<div class="container">
			<div id="map"></div>
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=80d9debf120a68f23edeff3cd39b2843&libraries=services,clusterer,drawing"></script>
			<script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = { 
			        center: new kakao.maps.LatLng(37.13234070053297, 128.96016485016034), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };
			
			var map = new kakao.maps.Map(mapContainer, mapOption);
			
			// 마커가 표시될 위치입니다 
			var markerPosition  = new kakao.maps.LatLng(37.13234070053297, 128.96016485016034); 
			
			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
			    position: markerPosition
			});
			
			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);
			
			var iwContent = '<div class="info-title" style="width: 55px; padding:5px; background-color: #fff; border: 1px solid #707070; border-radius: 5px; font-size:12px; color: #000; text-align: center;">태백호텔</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
			    iwPosition = new kakao.maps.LatLng(37.13234070053297, 128.96016485016034); //인포윈도우 표시 위치입니다
			
			// 인포윈도우를 생성합니다
			var infowindow = new kakao.maps.InfoWindow({
			    position : iwPosition, 
			    content : iwContent 
			});
			  
			// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
			infowindow.open(map, marker);
			
			var infoTitle = document.querySelectorAll('.info-title');
			infoTitle.forEach(function(e) {
			    var w = e.offsetWidth + 10;
			    var ml = w/2 - 6;
			    e.parentElement.style.top = "82px";
			    e.parentElement.style.left = "50%";
			    e.parentElement.style.marginLeft = -ml+"px";
			    e.parentElement.style.width = w+"px";
			    e.parentElement.previousSibling.style.display = "none";
			    e.parentElement.parentElement.style.border = "0px";
			    e.parentElement.parentElement.style.background = "unset";
			});
			</script>
			<article class="location">
				<h2>오시는길<span>Location</span></h2>
				<p>호텔로 오시는 방법을 안내해 드립니다.</p>
				<h3>버스 이용시</h3>
				<ul>
					<li>태백시외버스터미널 → 6번(상동), 7번(당골), 8번(화방재) 버스 승차 → 문곡/소도동 주민센터 하차 → 도보 1분 (약 20분 소요)</li>
					<li>태백시외버스터미널 → 택시 승차 → 태백호텔 하차 (약 10분 소요)</li>
				</ul>
				<h3>기차 이용시</h3>
				<ul>
					<li>태백역 → 택시 승차 → 태백호텔 하차 (약 10분 소요)</li>
				</ul>
			</article>
		</div>
	</main>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</html>