<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>태백호텔 > 부대시설 > 웨딩홀(세미나실)</title>
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
						<img src="/img/facilities03_01.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities03_02.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities03_03.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities03_04.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities03_05.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities03_06.jpg" />
					</div>
				</div>
				<div id="gallary-swiper-next" class="swiper-button-next"></div>
				<div id="gallary-swiper-prev" class="swiper-button-prev"></div>
				<div class="swiper-pagination"></div>
			</div>
			<div thumbsSlider="" class="swiper thumbs-swiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="/img/facilities03_01.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities03_02.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities03_03.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities03_04.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities03_05.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities03_06.jpg" />
					</div>
				</div>
    		</div>
			<article class="detail-box etc">
				<h2>웨딩홀(세미나실)<span>Wedding Hall(Seminar Room)</span></h2>
				<p>첨단 장비를 구비하여 고객의 성공적인 비즈니스를 위한 다목적 회의실 겸 가족 단위의 소규모 예식부터 200여명 규모의 예식까지 고객님의 취향에 맞게 컨설팅해드리는 웨딩홀입니다.</p>
				<div class="detail-info">
					<h3>시설</h3>
					<ul>
						<li>초고속 무선 인터넷</li>
						<li>마이크, 음향시설</li>
						<li>무선 프리젠터</li>
						<li>152인치 대형 LED Display</li>
					</ul>
					<h3 class="special">특이사항</h3>
					<ul>
						<li>
							<h4>위치</h4>
							<span>C동 2층</span>
						</li>
						<li>
							<h4>수용 인원</h4>
							<span>200명</span>
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