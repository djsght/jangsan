<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>태백호텔 > 부대시설 > 편의점</title>
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
	<div class="forward facilities"></div>
	<main>
		<div class="container">
			<div class="swiper gallary-swiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="/img/facilities08_01.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities08_02.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities08_03.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities08_04.jpg" />
					</div>
				</div>
				<div id="gallary-swiper-next" class="swiper-button-next"></div>
				<div id="gallary-swiper-prev" class="swiper-button-prev"></div>
				<div class="swiper-pagination"></div>
			</div>
			<div thumbsSlider="" class="swiper thumbs-swiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="/img/facilities08_01.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities08_02.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities08_03.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities08_04.jpg" />
					</div>
				</div>
    		</div>
			<article class="detail-box etc">
				<h2>편의점<span>Convenience Store</span></h2>
				<p>최고의 서비스로 고객이 필요로 하는 것을 항상 준비해두겠습니다.</p>
				<div class="detail-info">
					<h3>운영시간</h3>
					<ul>
						<li>평일 8:00am ~ 20:00pm</li>
						<li>주말, 공휴일 8:00am ~ 21:00pm</li>
					</ul>
					<h3 class="special">특이사항</h3>
					<ul>
						<li>
							<h4>위치</h4>
							<span>로비 프런트 좌측</span>
						</li>
						<li>
							<h4>취급품목</h4>
							<span>과자, 음료, 생활필수품, 주류, 아이스크림, 라면, 안주류, 커피 외</span>
						</li>
						<li>
							<h4>문의안내</h4>
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