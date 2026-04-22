<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>태백호텔 > 다이닝 > 커피숍</title>
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
	<div class="forward dining">
		<div class='container'>
			<ul class="tab-bar">
				<li><a href="/dining01">한식당</a></li>
				<li><a href="/dining02">양식당</a></li>
				<li><a href="/dining03">뷔페(연회장)</a></li>
				<li class="active"><a href="javascript:;">커피숍</a></li>
			</ul>
		</div>
	</div>
	<main>
		<div class="container">
			<div class="swiper gallary-swiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="/img/dining04_01.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/dining04_01.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/dining04_01.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/dining04_01.jpg" />
					</div>
				</div>
				<div id="gallary-swiper-next" class="swiper-button-next"></div>
				<div id="gallary-swiper-prev" class="swiper-button-prev"></div>
				<div class="swiper-pagination"></div>
			</div>
			<div thumbsSlider="" class="swiper thumbs-swiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="/img/dining04_01.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/dining04_01.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/dining04_01.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/dining04_01.jpg" />
					</div>
				</div>
    		</div>
			<article class="detail-box etc">
				<h2>커피숍<span>Coffee shop</span></h2>
				<p>커피 한잔의 여유로움과 편안한 휴식을 즐기며 담소를 나눌 수 있는 공간입니다.<br>※ 외부 음식물 및 음료류(커피, 캔맥주, 음료수 등)는 반입을 금지하고 있습니다.</p>
				<div class="detail-info">
					<h3>운영시간</h3>
					<ul>
						<li>07:00am ~ 23:00pm(마지막 주문 22:00pm까지)</li>
					</ul>
					<h3 class="special">특이사항</h3>
					<ul>
						<li>
							<h4>위치</h4>
							<span>C동 3층</span>
						</li>
						<li>
							<h4>수용 인원</h4>
							<span>100명</span>
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