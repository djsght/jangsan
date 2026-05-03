<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>태백호텔 > 사이트맵</title>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
</head>
<script type="text/javascript">
</script>
<body>
	<div class="forward site-map"></div>
	<main style="padding-top: 0;">
		<div class="container">
			<article class="sitemap">
				<h2>사이트맵<span>Site map</span></h2>
				<div class="sitemap-container">
					<ul>
						<li><h3><a href="/hotelinfo01">호텔소개</a></h3></li>
						<li><a href="/hotelinfo01">인사말</a></li>
						<li><a href="/hotelinfo02">이용안내</a></li>
						<li><a href="/hotelinfo03">오시는길</a></li>
					</ul>
					<ul>
						<li><h3><a href="/accommodation01">객실</a></h3></li>
						<li><a href="/accommodation01">Type A</a></li>
						<li><a href="/accommodation02">Type B</a></li>
						<li><a href="/accommodation03">Type C</a></li>
						<li><a href="/accommodation04">Type D</a></li>
						<li><a href="/accommodation05">Type E</a></li>
						<li><a href="/accommodation06">Type F</a></li>
						<li><a href="/accommodation07">Type G</a></li>
					</ul>
					<ul>
						<li><h3><a href="/dining01">레스토랑</a></h3></li>
						<li><a href="/dining01">레스토랑</a></li>
					</ul>
					<ul>
						<li><h3><a href="/facilities01">주변관광지</a></h3></li>
						<li><a href="/facilities01">주변관광지</a></li>
					</ul>
				</div>
			</article>
		</div>
	</main>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</html>