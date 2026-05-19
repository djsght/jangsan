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
	<div class="forward accommodation"></div>
	<main>
		<div class="container">
			<ul class="accomm-tab-bar">
				<li><a href="/accommodation01">8호실</a></li>
				<li><a href="/accommodation02">15호실</a></li>
				<li><a href="/accommodation03">6·7·9·10호실</a></li>
				<%--li class="active"><a href="javascript:;">2호실</a></li--%>
				<li><a href="/accommodation05">1·3·5호실</a></li>
				<li><a href="/accommodation06">11·12·13호실</a></li>
				<li><a href="/accommodation07">14호실</a></li>
			</ul>
			<div class="swiper gallary-swiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="/img/ready.svg" alt="상품 이미지">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/toilet.webp'/>" alt="화장실">
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
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/toilet.webp'/>" alt="화장실">
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
				<div class="notes">
					<h4>추가요금안내 및 유의사항</h4>
					<p>- 객식 예약 후 결제는 24시간이내에 해주시면 됩니다.</p>
					<p>- 객실 예약은 예약일 당일 취소 불가하며 하루전 취소하시면 50% 공제, 이틀전 취소하시면 10% 공제 됩니다.</p>
					<p>- 객실 이용 시 추가인원이 발생 시 추가인원 1인당 1만원씩 추가되며, 추가인원에 맞게끔 침구류를 제공해드리고 있습니다.</p>
					<p>- 홈페이지에 게시된 객실 사진은 대표객실의 사진이므로 예약하시는 객실과 다를 수 있습니다.</p>
				</div>
			</article>
			<article class="accom-map">
				<h2>객실 배치도<span>Room Layout Plan</span></h2>
				<img src="<c:url value='/img/webp/map_d.webp'/>" alt="typeD 배치도">
			</article>
		</div>
	</main>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</html>