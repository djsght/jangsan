<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>태백호텔 > 부대시설 > 캠핑장</title>
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
						<img src="/img/facilities10_01.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities10_02.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities10_03.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities10_04.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities10_05.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities10_06.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities10_07.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities10_08.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities10_09.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities10_10.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities10_11.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities10_12.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities10_13.jpg" />
					</div>
				</div>
				<div id="gallary-swiper-next" class="swiper-button-next"></div>
				<div id="gallary-swiper-prev" class="swiper-button-prev"></div>
				<div class="swiper-pagination"></div>
			</div>
			<div thumbsSlider="" class="swiper thumbs-swiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="/img/facilities10_01.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities10_02.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities10_03.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities10_04.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities10_05.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities10_06.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities10_07.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities10_08.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities10_09.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities10_10.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities10_11.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities10_12.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities10_13.jpg" />
					</div>
				</div>
    		</div>
			<article class="detail-box etc">
				<h2>캠핑장<span>Camping Ground</span></h2>
				<p>요즘 트렌드인 글램핑을 같이 즐길 수 있습니다.<br>※ 숙박 고객은 할인 받을 수 있습니다.</p>
				<div class="detail-info">
					<h3>운영시간</h3>
					<ul>
						<li>8:00am ~ 21:00pm</li>
					</ul>
					<h3 class="special">특이사항</h3>
					<ul>
						<li>
							<h4>위치</h4>
							<span>호텔앞 캠핑장</span>
						</li>
						<li>
							<h4>문의안내</h4>
							<span>TEL : 010-8387-1925</span>
						</li>
					</ul>
				</div>
			</article>
		</div>
	</main>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</html>