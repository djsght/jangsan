<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>태백호텔 > 다이닝 > 한식당</title>
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
						<img src="<c:url value='/img/webp/restaurant.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="/img/ready.svg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/ready.svg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/ready.svg" />
					</div>
				</div>
				<div id="gallary-swiper-next" class="swiper-button-next"></div>
				<div id="gallary-swiper-prev" class="swiper-button-prev"></div>
				<div class="swiper-pagination"></div>
			</div>
			<div thumbsSlider="" class="swiper thumbs-swiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/restaurant.webp'/>">
					</div>
					<div class="swiper-slide">
						<img src="/img/ready.svg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/ready.svg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/ready.svg" />
					</div>
				</div>
    		</div>
			<article class="detail-box etc menu">
				<h2>장산 레스토랑<span>Jangsan Restaurant</span></h2>
				<p>매일 매일 제공되는 신선한 재료로 세련된 셰프의 손끝에서 만들어진 품격있는 요리를 즐길 수 있습니다.</p>
				<button><a href="/pdf/Korean restaurant menu.pdf" target="_blank">메뉴</a></button>
				<div class="detail-info">
					<h3>운영시간</h3>
					<ul>
						<li>07:00am ~ 21:00pm (라스트 오더 20:30pm까지)</li>
					</ul>
					<h3 class="special">특이사항</h3>
					<ul>
						<li>
							<h4>위치</h4>
							<span>B동 1층</span>
						</li>
						<li>
							<h4>수용 인원</h4>
							<span>80명 / 별실 40명(별실 이용시 사전 예약 부탁드립니다)</span>
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