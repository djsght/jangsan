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
	$(document).ready(function(){
		let tablet_width = 720;
		var thumbs_swiper = new Swiper(".thumbs-swiper", {
			slidesPerView: 4,
			freeMode: true,
			watchSlidesProgress: true,
			breakpoints:{
				0:{
					slidesPerView: 2
				},
				720:{
					slidesPerView: 4
				}
			}
		});
		var gallary_swiper = new Swiper(".gallary-swiper", {
			spaceBetween: 10,
			navigation: {
				nextEl: ".swiper-button-next",
				prevEl: ".swiper-button-prev",
			},
			pagination:{
				el: ".swiper-pagination",
				clickable: true
			},
			thumbs: {
				swiper: thumbs_swiper,
			},
		}); 
	});
</script>
<body>
	<div class="forward dining"></div>
	<main>
		<div class="container">
			<div class="swiper gallary-swiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_1.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_2.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_3.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_4.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_5.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_6.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_7.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_8.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_9.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_10.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_11.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_12.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_13.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_14.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_15.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_16.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_17.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_18.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_19.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_20.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_21.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_22.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_23.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_24.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_25.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_26.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_27.webp'/>">
					</div>
				</div>
				<div id="gallary-swiper-next" class="swiper-button-next"></div>
				<div id="gallary-swiper-prev" class="swiper-button-prev"></div>
				<div class="swiper-pagination"></div>
			</div>
			<div thumbsSlider="" class="swiper thumbs-swiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_1.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_2.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_3.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_4.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_5.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_6.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_7.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_8.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_9.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_10.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_11.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_12.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_13.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_14.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_15.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_16.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_17.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_18.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_19.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_20.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_21.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_22.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_23.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_24.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_25.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_26.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant_27.webp'/>">
					</div>
				</div>
    		</div>
			<article class="detail-box etc menu">
				<h2>장산 레스토랑<span>Jangsan Restaurant</span></h2>
				<p>특급 호텔 레스토랑의 검증된 요리법과 깊은 손맛을 그대로 담아, 품격 높은 최고의 맛을 선사합니다.</p>
				<%--button><a href="/pdf/Korean restaurant menu.pdf" target="_blank">메뉴</a></button--%>
				<div class="detail-info">
					<h3>운영시간</h3>
					<ul>
						<li>07:00am ~ 20:00pm (식사 라스트 오더 19:00pm까지)</li>
					</ul>
					<h3 class="special">특이사항</h3>
					<ul>
						<li>
							<h4>수용 인원</h4>
							<span>100명 (테라스, 실내 포함)</span>
						</li>
						<li>
							<h4>예약 및 문의안내</h4>
							<span>TEL :  033-378-5557</span>
						</li>
					</ul>
				</div>
			</article>
		</div>
	</main>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</html>