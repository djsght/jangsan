<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>장산콘도 > 객실 > Type D</title>
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
	<div class="forward accommodation"></div>
	<main>
		<div class="container">
			<ul class="accomm-tab-bar">
				<li><a href="/accommodation01">Type A</a></li>
				<li><a href="/accommodation02">Type B</a></li>
				<li><a href="/accommodation03">Type C</a></li>
				<li class="active"><a href="javascript:;">Type D</a></li>
				<li><a href="/accommodation05">Type E</a></li>
				<li><a href="/accommodation06">Type F</a></li>
				<li><a href="/accommodation07">Type G</a></li>
			</ul>
			<div class="swiper gallary-swiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="/img/ready.svg" alt="상품 이미지">
					</div>
				</div>
				<div id="gallary-swiper-next" class="swiper-button-next"></div>
				<div id="gallary-swiper-prev" class="swiper-button-prev"></div>
				<div class="swiper-pagination"></div>
			</div>
			<div thumbsSlider="" class="swiper thumbs-swiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="/img/ready.svg" alt="상품 이미지">
					</div>
				</div>
    		</div>
			<article class="detail-box">
				<h2>디럭스<span>Delux</span></h2>
				<p>산 전망을 즐길 수 있으며 다소 저렴하게 부부, 연인들 끼리 힐링 할 수 있는 객실입니다.</p>
				<button><a onclick="reserveDetail();">예약하기</a></button>
				<div class="detail-info">
					<h3>객실</h3>
					<ul>
						<li>TV</li>
						<li>인터넷(무료WiFi)</li>
						<li>냉장고(생수2병)</li>
						<li>전자렌지</li>
						<li>커피포트(무료 티 & 커피)</li>
						<li>머그컵</li>						
						<li>샤워가운</li>
						<li>헤어드라이어</li>
						<li>론드리백</li>
						<li>메모지 & 볼펜</li>
						<li>슬리퍼</li>
						<li>슈크리너</li>
						<li>구두주걱</li>
					</ul>
					<h3>욕실</h3>
					<ul>
						<li>욕조</li>
						<li>욕실용품(샴푸, 린스, 바디워시)</li>
						<li>빗</li>
						<li>화장솜</li>
						<li>면봉</li>
						<li>샤워캡</li>
						<li>양치컵</li>
					</ul>
					<h3 class="special">객실정보</h3>
					<ul>
						<li>
							<h4>체크인 & 체크아웃 시간</h4>
							<span>체크인 : 15:00pm<br>체크아웃 : 11:00am</span>
						</li>
						<li>
							<h4>수용인원</h4>
							<span>2인(최대 4인)</span>
						</li>
						<li>
							<h4>객실크기</h4>
							<span>66m² ~ 89.1m²</span>
						</li>
						<li>
							<h4>객실구성</h4>
							<span>침실 2개(침대크기 : 1,500 x 2,000mm 2개), 욕실 2개(206호 3개)</span>
						</li>
						<li>
							<h4>난방방식</h4>
							<span>2WAY(천장히터, 바닥난방)</span>
						</li>
						<li>
							<h4>혜택사항</h4>
							<span>부대시설 이용시 할인 적용<br>무료주차(1객실 당 1대)</span>
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