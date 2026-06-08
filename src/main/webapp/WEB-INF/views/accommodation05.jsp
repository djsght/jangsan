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
	function reserve1(){
		var url = 'https://booking.naver.com/booking/3/bizes/1657882/items/7694140?area=pll';
		window.open(url, "_blank");
	}
	function reserve3(){
		var url = 'https://booking.naver.com/booking/3/bizes/1657882/items/7696766?area=pll';
		window.open(url, "_blank");
	}
	function reserve5(){
		var url = 'https://booking.naver.com/booking/3/bizes/1657882/items/7696768?area=pll';
		window.open(url, "_blank");
	}
</script>
<body>
	<div class="forward accommodation"></div>
	<main>
		<div class="container">
			<ul class="accomm-tab-bar">
				<li><a href="/accommodation01">8호실</a></li>
				<li><a href="/accommodation02">15호실</a></li>
				<li><a href="/accommodation03">6·7·9·10호실</a></li>
				<%--li><a href="/accommodation04">2호실</a></li--%>
				<li class="active"><a href="javascript:;">1·3·5호실</a></li>
				<li><a href="/accommodation06">11·12·13호실</a></li>
				<li><a href="/accommodation07">14호실</a></li>
			</ul>
			<div class="swiper gallary-swiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/accomm_e_1.webp'/>" alt="1,3,5호실_1">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/accomm_e_2.webp'/>" alt="1,3,5호실_2">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/accomm_e_3.webp'/>" alt="1,3,5호실_3">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/accomm_e_4.webp'/>" alt="1,3,5호실_4">
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
						<img src="<c:url value='/img/webp/accomm_e_1.webp'/>" alt="1,3,5호실_1">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/accomm_e_2.webp'/>" alt="1,3,5호실_2">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/accomm_e_3.webp'/>" alt="1,3,5호실_3">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/accomm_e_4.webp'/>" alt="1,3,5호실_4">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/toilet.webp'/>" alt="화장실">
					</div>
				</div>
    		</div>
			<article class="detail-box">
				<div class="card-container odd">
					<div class="card">
						<div class="word-container">
							<h2>1호실</h2>
							<span>Room 1</span>
						</div>
						<div class="word-background"></div>
						<img src="<c:url value='/img/webp/accomm_ex_1_m.webp'/>" alt="1호실_전경">
						<button><a onclick="reserve1();">예약하기</a></button>
					</div>
					<div class="card">
						<div class="word-container">
							<h2>3호실</h2>
							<span>Room 3</span>
						</div>
						<img src="<c:url value='/img/webp/accomm_ex_3_m.webp'/>" alt="3호실_전경">
						<button><a onclick="reserve3();">예약하기</a></button>
					</div>
					<div class="card">
						<div class="word-container">
							<h2>5호실</h2>
							<span>Room 5</span>
						</div>
						<img src="<c:url value='/img/webp/accomm_ex_5_m.webp'/>" alt="5호실_전경">
						<button><a onclick="reserve5();">예약하기</a></button>
					</div>
				</div>
				<div class="detail-info">
					<h3>객실</h3>
					<ul>
						<li>TV</li>
						<li>인터넷(무료WiFi)</li>
					</ul>
					<h3>주방</h3>
					<ul>
						<li>냉장고</li>
						<li>전자레인지</li>
						<li>커피포트</li>
						<li>인덕션</li>
						<li>냄비</li>
						<li>조리기구(프라이팬 제외)</li>
						<li>식기(밥그릇, 국그릇, 반찬그릇)</li>
					</ul>
					<h3>욕실</h3>
					<ul>
						<li>헤어드라이기</li>
						<li>욕실용품(샴푸, 린스)</li>
						<li>빗</li>
						<li>양치컵</li>
					</ul>
					<h3 class="special">객실정보</h3>
					<ul>
						<li>
							<h4>체크인 & 체크아웃 시간</h4>
							<span>체크인 : 14:00pm(비수기) 15:00pm(성수기)</span><span>체크아웃 : 11:00am</span>
						</li>
						<li>
							<h4>수용인원(기준/최대)</h4>
							<span>4인 / 5인</span>
						</li>
						<li>
							<h4>객실크기</h4>
							<span>15평</span>
						</li>
						<li>
							<h4>객실구성</h4>
							<span>거실 1개, 침실 1개(더블 1개), 주방 1개, 욕실 1개</span>
						</li>
						<li>
							<h4>예약 및 문의안내</h4>
							<span>TEL : 010-9763-5561</span>
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
				<img src="<c:url value='/img/webp/map_e.webp'/>" alt="typeE 배치도">
			</article>
		</div>
	</main>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</html>