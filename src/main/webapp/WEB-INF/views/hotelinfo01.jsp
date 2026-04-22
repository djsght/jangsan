<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>태백호텔 > 호텔소개 > 인사말</title>
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
			<img src="/img/main-img.jpg">
			<article class="greetings">
				<h2>인사말<span>Greetings</span></h2>
				<strong>WELCOME TO TAEBAEK HOTEL</strong>
				<strong>안녕하십니까? 고객님!<br>저희 태백 호텔에 오신 것을 환영합니다.</strong>
				<p>민족의 영산 태백산(해발1,567m) 국립공원 입구 자락인 청정지역에 위치한 호텔로<br>머무르는 동안 계절별로 열리는 각종 지역 축제를 같이 즐기실 수 있습니다.</p>
				<p>태백시 눈축제(1월), 태백 천상의 산나물 축제(5월), 구문소용축제(6월), 태백커플축제(7월), 태백 해바라기 축제(7~8월),<br>태백 한강·낙동강 발원 축제(7~8월), 태백 황지연못 황부자 며느리 축제(9월), 태백 철암 단풍 축제(10월)등</p>
				<p>그리고 연중 개최되는 각종체육대회 및 전지훈련에 참가하는 고객님들도 편리하게 이용하실 수 있도록<br>차별화된 맞춤서비스(각종운동시설, 공용세탁실, 캠핑장둘레 조깅 코스등)를 제공합니다.</p>
				<p>또한 고풍스런 외관 및 유럽풍의 품격있는 내부 인테리어와 실속있는 각종 부대시설<br>한식당, 양식당, 뷔페(연회장), 커피숍, 웨딩홀(세미나실), 소연회장, 사우나,<br>워터풀, 편의점, 미용실, 베이커리, 카페, 바이오포톤세라피실, 공용세탁실, 강변테라스 등이<br>오롯이 구비되어있어서 호텔 경내에서 모두 해결하실 수 있습니다.</p>
				<p>아울러 야외 캠핑장이 마련되어 있어 요즘 트렌드에 맞는 글램핑도 동시에 즐기실 수 있습니다.</p>
				<span>태백호텔 임직원 일동</span>
			</article>
		</div>
	</main>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</html>