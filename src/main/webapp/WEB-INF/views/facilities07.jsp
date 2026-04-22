<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>태백호텔 > 부대시설 > 베이커리 & 카페</title>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
</head>
<body>
	<div class="forward facilities"></div>
	<main>
		<div class="container">
			<div class="swiper gallary-swiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="/img/preimg.png" />
					</div>
				</div>
			</div>
			<article class="detail-box etc">
				<h2>베이커리 & 카페<span>Bakery & Cafe</span></h2>
				<p>제빵사의 정성스런 손 맛이 느껴지는 갓 구운 빵과 커피 한잔으로 하루를 시작하실 수 있습니다.</p>
				<div class="detail-info">
					<h3>운영시간</h3>
					<ul>
						<li>07:00am ~ 22:00pm</li>
					</ul>
					<h3 class="special">특이사항</h3>
					<ul>
						<li>
							<h4>위치</h4>
							<span>1층 로비 프런트 우측</span>
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