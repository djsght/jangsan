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
				<li class="active"><a href="javascript:;">인사말</a></li>
				<li><a href="/hotelinfo02">이용안내</a></li>
				<li><a href="/hotelinfo03">오시는길</a></li>
			</ul>
		</div>
	</div>
	<main>
		<div class="container">
			<img src="<c:url value='/img/webp/main.webp'/>" alt="장산콘도 전경">
			<article class="greetings">
				<h2>인사말<span>Greetings</span></h2>
				<strong>안녕하세요.장산콘도를 찾아주셔서 감사합니다.</strong>
				<strong>안녕하십니까?<br>저희 장산콘도를 찾아주신 고객 여러분께 진심으로 감사드립니다.</strong>
				<p>하늘과 맞닿은 1025m에 위치한 장산콘도, 장산 레스토랑에서의<br>순간순간은 여러분을 이국적인 정취에 흠뻑 빠져들게 합니다.<br>눈앞에 펼쳐질 오염되지 않은 자연의 맑고 깨끗한 공기!</p>
				<p>봄에는 푸르른 새싹과 철쭉이 만개하고<br>여름엔 고지대의 시원한 바람을 느끼며<br>가을엔 울긋불긋 단풍을<br>겨울엔 눈과 어우러진 주목의 아름다움까지,</p>
				<p>마음의 휴식과 안정이 필요하신가요? 언제든지 찾아주세요.<br>아름다운 추억과 멋진 재충전의 시간을 만들 수 있을 겁니다.<br>즐거움이 가득한 곳 장산콘도, 장산 레스토랑으로 오셔서<br>태백, 함백, 장산녹음의 아름다움과 자연경관을 누리시고<br>즐거운 여행이 되시기 바랍니다.</p>
				<span>장산콘도 대표 김준호</span>
			</article>
		</div>
	</main>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</html>