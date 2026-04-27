<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>장산콘도 > 콘도소개 > 이용안내</title>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
</head>
<script type="text/javascript">
</script>
<body>
	<div class="forward hotel-info">
		<div class='container'>
			<ul class="tab-bar">
				<li><a href="/hotelinfo01">인사말</a></li>
				<li class="active"><a href="javascript:;">이용안내</a></li>
				<li><a href="/hotelinfo03">오시는길</a></li>
			</ul>
		</div>
	</div>
	<main>
		<div class="container">
			<div class="hotel-lobby">
				<img src="/img/lobby-img01.png">
				<img src="/img/lobby-img02.png">
				<img src="/img/lobby-img03.png">
				<div class="content">
					<span>호텔 로비</span>
					<span>Hotel Lobby</span>
					<p>고객님들의 편안한 휴식처가<br>되어줄 호텔 로비입니다.<br>호텔의 다양한 정보를 로비의<br>프론트에서 만나보세요.</p>
				</div>
			</div>
			<article class='use'>
				<h2>이용안내<span>Information Use</span></h2>
				<ol>
					<li>호텔내 전 객실 금연입니다.</li>
					<li>저희 호텔은 반려동물 동반입장이 불가하십니다. (시각장애인 안내견 제외)</li>
					<li>체크인 시간 : 오후 3시 이후 ~</li>
					<li>체크아웃 시간 : 오전 11시</li>
					<li>객실 내 칫솔, 치약, 면도기는 일회용품으로 별도 제공되지 않으며, 프론트 및 편의점에서 구매가능합니다.</li>
					<li>객실 내 미니바는 없으나 지장수가 객실별 최소인원수대로 무료 제공됩니다.</li>
				</ol>
			</article>
			<article class='term'>
				<h2>객실 예약 취소 약관<span>Room Reservation Cancellation Terms and Conditions</span></h2>
				<span>- 성수기 취소약관 (7 ~ 8월 및 연휴, 연말 기간)</span>
				<ul>
					<li>7일전 위약금 0%</li>
					<li>6일전 위약금 20%</li>
					<li>5일전 위약금 40%</li>
					<li>4일전 위약금 60%</li>
					<li>3일전 ~ 당일위약금 100%</li>
				</ul>
				<span>- 비수기(성수기 제외) 취소약관</span>
				<ul>
					<li>3일전 위약금 0%</li>
					<li>2일전 위약금 20%</li>
					<li>1일전 위약금 50%</li>
					<li>당일 위약금 100% (노쇼우 포함) - 호텔 상황에 따라 예약 날짜이동은 가능하십니다.</li>
				</ul>
			</article>
			<article class="information">
				<h2>호텔정보<span>Hotel Information</span></h2>
				<p>
					개관일 : 2022년  7월  7일<br>규모 : 지하 1층 ~ 지상 4층<br>주차대수 : 104 대(투숙객 1대 무료주차)<br>객실수 : 88개 객실<br>대표전화 : 033-553-5500
				</p>
			</article>
		</div>
	</main>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</html>