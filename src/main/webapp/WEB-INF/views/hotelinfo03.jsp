<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>장산콘도</title>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
</head>
<script type="text/javascript">
	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	$(document).ready(function(){
		console.log('lang = ', lang);
	});
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
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ffc64d23c960c602c79697ac5e5e609f"></script>
			<script>
				var container = document.getElementById('map');
				var options = {
					center: new kakao.maps.LatLng(37.14046249339957, 128.88365100175855),
					level: 3
				};

				var map = new kakao.maps.Map(container, options);
			</script>
			<article class="location">
				<h2>오시는길<span>Location</span></h2>
				<p>장산콘도로 오시는 방법을 안내해 드립니다.</p>
				<h3>버스 이용시</h3>
				<ul>
					<li>태백시외버스터미널 → 택시 승차 → 장산콘도 하차 (약 25분 소요)</li>
				</ul>
				<h3>기차 이용시</h3>
				<ul>
					<li>태백역 → 택시 승차 → 장산콘도 하차 (약 25분 소요)</li>
				</ul>
				<h3>지역별 승용차 이용 시 추천경로</h3>
				<ul>
					<li>수도권 (서울, 인천, 경기) : 영동고속도로(만종분기점) → 중앙고속도로(제천IC) → 영월 → 태백</li>
					<li>영남권 (부산, 대구, 울산, 경상) : 경부고속도로(서대구IC) → 중앙고속도로(영주IC) → 봉화 → 현동 → 태백</li>
					<li>충청권 (대전, 세종, 충청) : 청주 → 충주 → 제천 → 영월 → 태백</li>
					<li>호남권 (광주, 전라) : 88고속국도 → 경부고속도로(서대구IC) → 중앙고속도로(영주IC) → 봉화 → 현동 → 태백</li>
					<li>강원권 : 강릉(7번국도) → 동해(38번국도) → 삼척 → 태백</li>
				</ul>
			</article>
		</div>
	</main>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</html>