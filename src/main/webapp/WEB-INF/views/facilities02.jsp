<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>태백호텔 > 부대시설 > 사우나</title>
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
						<img src="/img/facilities02_01.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities02_02.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities02_03.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities02_04.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities02_05.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities02_06.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities02_07.jpg" />
					</div>
				</div>
				<div id="gallary-swiper-next" class="swiper-button-next"></div>
				<div id="gallary-swiper-prev" class="swiper-button-prev"></div>
				<div class="swiper-pagination"></div>
			</div>
			<div thumbsSlider="" class="swiper thumbs-swiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="/img/facilities02_01.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities02_02.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities02_03.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities02_04.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities02_05.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities02_06.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities02_07.jpg" />
					</div>
				</div>
    		</div>
			<article class="detail-box etc">
				<h2>사우나<span>Sauna</span></h2>
				<p>넓은 탕 내 공간의 여유로움과 다양한 사우나를 즐길 수 있으며 숙박 고객은 할인 받을 수 있습니다.</p>
				<div class="detail-info">
					<h3>운영시간</h3>
					<ul>
						<li>6:00am ~ 21:00pm까지 (입장마감 20:00pm)</li>
					</ul>
					<h3 class="special">특이사항</h3>
					<ul>
						<li>
							<h4>위치</h4>
							<span>1층</span>
						</li>
						<li>
							<h4>사우나 구성</h4>
							<span>안마탕, 온탕, 열탕<br>자수정, 옥, 마노, 소금 사우나</span>
						</li>
						<li>
							<h4>수용 인원</h4>
							<span>최대 580명(동시 수용시)</span>
						</li>
						<li>
							<h4>예약 및 문의안내</h4>
							<span>TEL : 033-553-5500</span>
						</li>
					</ul>
					<h3 class="note first">안내사항</h3>
					<ul>
						<li>만 4세 이상 남자 어린이는 여탕 출입이 제한됩니다.</li>
					</ul>
				</div>
			</article>
		</div>
	</main>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</html>