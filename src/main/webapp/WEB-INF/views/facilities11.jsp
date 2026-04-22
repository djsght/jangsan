<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>태백호텔 > 부대시설 > 강변테라스</title>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
</head>
<body>
	<div class="forward facilities"></div>
	<main>
		<div class="container">
			<div class="swiper gallary-swiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="/img/facilities11.jpg" />
					</div>
				</div>
			</div>
			<article class="detail-box etc">
				<h2>강변테라스<span>Riverside Terrace</span></h2>
				<p>워터풀과 바로 연결되어 있는 강변테라스는 10m 아래에 계곡을 내려다 볼 수 있는 2개의 전망대가 준비되어 있는 편안한 휴식 공간입니다.</p>
				<div class="detail-info terrace">
					<h3 class="special">특이사항</h3>
					<ul>
						<li>
							<h4>위치</h4>
							<span>C동 1층 야외 공간 </span>
						</li>
					</ul>
				</div>
			</article>
		</div>
	</main>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</html>