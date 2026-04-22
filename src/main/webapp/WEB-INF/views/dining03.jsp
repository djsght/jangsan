<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>태백호텔 > 다이닝 > 뷔페(연회장)</title>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
</head>
<body>
	<div class="forward dining">
		<div class='container'>
			<ul class="tab-bar">
				<li><a href="/dining01">한식당</a></li>
				<li><a href="/dining02">양식당 & 커피숍</a></li>
				<li class="active"><a href="javascript:;">뷔페(연회장)</a></li>
			</ul>
		</div>
	</div>
	<main>
		<div class="container">
			<div class="swiper gallary-swiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="/img/dining03_01.jpg" />
					</div>
				</div>
			</div>
			<article class="detail-box etc">
				<h2>뷔페(연회장)<span>Banquet Hall</span></h2>
				<p>맛과 건강을 고려한 다양한 음식들을 즐길 수 있으며 연회 목적에 따라 비즈니스 미팅, 세미나&컨퍼런스, 식사를 겸한 가족, 단체연회 등 다양한 형태로 행사를  진행하실 수 있습니다. 단체 숙박 고객들은 할인도 받을 수 있습니다.<br>※ 외부 음식물 및 음료류(커피, 캔맥주, 음료수 등)는 반입을 금지하고 있습니다.</p>
				<div class="detail-info">
					<h3>운영시간</h3>
					<ul>
						<li>07:50am ~ 22:00pm</li>
					</ul>
					<h3 class="special">특이사항</h3>
					<ul>
						<li>
							<h4>위치</h4>
							<span>C동 4층</span>
						</li>
						<li>
							<h4>수용 인원</h4>
							<span>100명</span>
						</li>
						<li>
							<h4>예약 및 문의안내</h4>
							<span>TEL : 033-553-5500</span>
						</li>
					</ul>
				</div>
			</article>
		</div>
	</main>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</html>