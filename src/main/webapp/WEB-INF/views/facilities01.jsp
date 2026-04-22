<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>태백호텔 > 부대시설 > 워터풀</title>
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
						<img src="/img/facilities01_01.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities01_02.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities01_03.jpg" />
						<span class="font">어린이풀장</span>
					</div>
				</div>
				<div id="gallary-swiper-next" class="swiper-button-next"></div>
				<div id="gallary-swiper-prev" class="swiper-button-prev"></div>
				<div class="swiper-pagination"></div>
			</div>
			<div thumbsSlider="" class="swiper thumbs-swiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="/img/facilities01_01.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities01_02.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="/img/facilities01_03.jpg" />
					</div>
				</div>
    		</div>
			<article class="detail-box etc">
				<h2>워터풀<span>Water Pool</span></h2>
				<p>돔형 워터풀로 사계절 전천후 이용 가능하며 워터슬라이드가 설치되어 있어 가족 동반으로 물놀이를 여유롭게 즐길 수 있습니다. 어린이 풀장은 아이들이 낮은 수심에서 편안하고 안전하게 물놀이를 즐길 수 있는 공간입니다.<br>※ 숙박 고객은 할인 받을 수 있습니다.<br>※ 음식물 반입 금지 입니다.</p>
				<div class="detail-info">
					<h3>운영시간</h3>
					<ul>
						<li>08:00am ~ 20:00pm</li>
					</ul>
					<h3 class="special">특이사항</h3>
					<ul>
						<li>
							<h4>위치</h4>
							<span>1층(사우나를 통하여 입장)</span>
						</li>
						<li>
							<h4>수심안내</h4>
							<span>어린이 풀장 : 60cm / 풀장 : 100cm</span>
						</li>
						<li>
							<h4>예약 및 문의안내</h4>
							<span>TEL : 033-553-5500</span>
						</li>
					</ul>
					<h3 class="note first">안내사항</h3>
					<ul>
						<li>사우나를 통하여 입장하시므로 워터풀 입장 또는 퇴장시 사우나시설을 무료이용 가능합니다.</li>
					</ul>
					<h3 class="note">기타 안내사항</h3>
					<ul>
						<li>워터풀 티켓 구매시 드리는 수영팔찌를 반드시 착용하여 주십시오.</li>
						<li>정규 수영복(원피스 수영복, 비키니 수영복 등), 래쉬가드, 수영모 착용 필수이며 사우나에서 유료대여 가능합니다. (면티, 면바지 종류 착용 불가)</li> 
						<li>대여비용 안내 [수영복 : 5,000원 / 수영모 : 2,000원 / 수경 : 3,000원]</li>
						<li>초등학생 이하는 반드시 보호자와 동행하십시오.</li>
						<li>36개월 이하 유아는 반드시 방수 기저귀를 착용하여 주시기 바랍니다.</li>
						<li>안전사고 예방을 위해 안전 요원의 가이드에 적극적인 협조 부탁드립니다.</li>
						<li>음식물 반입 금지입니다.</li>
					</ul>
				</div>
			</article>
		</div>
	</main>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</html>