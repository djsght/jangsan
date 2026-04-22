<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>태백호텔 > 부대시설 > 바이오 포톤 세라피실</title>
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
				<h2>바이오 포톤 세라피실<span>Bio Photon Theraphy Room</span></h2>
				<p>일상에 지친 몸과 마음을 힐링 할 수 있는 최상의 공간입니다.<br>※ 숙박 고객은 할인 받을 수 있습니다.</p>
				<div class="detail-info">
					<h3>운영시간</h3>
					<ul>
						<li>07:00am ~ 21:00pm</li>
					</ul>
					<h3 class="special">특이사항</h3>
					<ul>
						<li>
							<h4>위치</h4>
							<span>A동 1층</span>
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