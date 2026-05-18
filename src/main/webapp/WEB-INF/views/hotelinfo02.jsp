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
			<article class='use'>
				<h2>이용안내<span>Information Use</span></h2>
				<ol>
					<li>콘도내 전 객실 금연입니다.</li>
					<li>저희 콘도는 반려동물 동반입장이 불가하십니다. (시각장애인 안내견 제외)</li>
					<li>체크인 시간: 14시 이후~</li>
					<li>체크아웃 시간: 12시</li>
					<li>객식 예약 후 결제는 24시간이내에 해주시면 됩니다.</li>
					<li>객실 예약은 예약일 당일 취소 불가하며 하루전 취소하시면 50% 공제, 이틀전 취소하시면 10% 공제 됩니다.</li>
					<li>객실 이용 시 추가인원이 발생 시 추가인원 1인당 1만원씩 추가되며, 추가인원에 맞게끔 침구류를 제공해드리고 있습니다.</li>
					<li>2인실을 제외한 모든 객실에 주방시설이 완비되어 있습니다.</li>
					<li>성수기 예약은 보통 매년 6월부터 가능합니다.</li>
				</li>
			</article>
			<article class="information">
				<h2>콘도정보<span>Condo Information</span></h2>
				<p>
					개관일 : 2026년  5월  1일<br>규모 : 0000㎡<br>주차대수 : 약 40대(투숙객 1대 무료주차)<br>객실수 : 15객실<br>대표전화 : 033-553-5500
				</p>
			</article>
			<article class="map">
				<h2>콘도 안내도<span>Condo Guide</span></h2>
				<img src="<c:url value='/img/webp/map_condo.webp'/>" alt="콘도 배치도">
			</article>
		</div>
	</main>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</html>