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
						<li><h3><a href="/accommodation02">객실</a></h3></li>
						<li>
							<a href="/accommodation02">스탠다드</a>
							<ul>
								<li><a href="/accommodation02">스탠다드더블</a></li>
								<li><a href="/accommodation01">스탠다드온돌</a></li>
								<li><a href="/accommodation03">스탠다드트윈</a></li>
							</ul>
						</li>
						<li>
							<a href="/accommodation04">디럭스</a>
							<ul>
								<li><a href="/accommodation04">디럭스</a></li>
								<li><a href="/accommodation05">디럭스패밀리</a></li>
							</ul>
						</li>
						<li>
							<a href="/accommodation06">로얄</a>
							<ul>
								<li><a href="/accommodation06">로얄스위트</a></li>
								<li><a href="/accommodation07">로얄패밀리</a></li>
							</ul>
						</li>
						<li>
							<a href="/accommodation08">프리미엄</a>
							<ul>
								<li><a href="/accommodation08">프리미엄온돌</a></li>
								<li><a href="/accommodation09">프리미엄스위트</a></li>
								<li><a href="/accommodation10">프리미엄패밀리</a></li>
							</ul>
						</li>
					</ul>
					<ul>
						<li><h3><a href="/dining01">다이닝</a></h3></li>
						<li><a href="/dining01">한식당</a></li>
						<li><a href="/dining02">양식당&커피숍</a></li>
						<li><a href="/dining03">뷔페(연회장)</a></li>
					</ul>
					<ul>
						<li><h3><a href="/facilities01">부대시설</a></h3></li>
						<li><a href="/facilities01">워터풀</a></li>
						<li><a href="/facilities02">사우나</a></li>
						<li><a href="/facilities03">웨딩홀(세미나실)</a></li>
						<li><a href="/facilities04">소연회장</a></li>
						<%--li><a href="/facilities05">바이오포톤세라피실</a></li--%>
						<li><a href="/facilities06">미용실</a></li>
						<li><a href="/facilities07">베이커리 & 카페</a></li>
						<li><a href="/facilities08">편의점</a></li>
						<li><a href="/facilities12">분식 & 카페</a></li>
						<%--li><a href="/facilities09">공용세탁실</a></li--%>
						<li><a href="/facilities10">캠핑장</a></li>
						<li><a href="/facilities11">강변테라스</a></li>
					</ul>
				</div>
			</article>
		</div>
	</main>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</html>