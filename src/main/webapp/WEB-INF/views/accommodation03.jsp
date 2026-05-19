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
	
	function reserve6(){
		var url = 'https://m.booking.naver.com/booking/3/bizes/272467/items/7630202?theme=place&service-target=map-pc&lang=ko&area=pll&map-search=1';
		window.open(url, "_blank");
	}
	function reserve7(){
		var url = 'https://m.booking.naver.com/booking/3/bizes/272467/items/7630203?theme=place&service-target=map-pc&lang=ko&area=pll&map-search=1';
		window.open(url, "_blank");
	}
	function reserve9(){
		var url = 'https://m.booking.naver.com/booking/3/bizes/272467/items/7630205?theme=place&service-target=map-pc&lang=ko&area=pll&map-search=1';
		window.open(url, "_blank");
	}
	function reserve10(){
		var url = 'https://m.booking.naver.com/booking/3/bizes/272467/items/7630206?theme=place&service-target=map-pc&lang=ko&area=pll&map-search=1';
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
				<li class="active"><a href="javascript:;">6·7·9·10호실</a></li>
				<%--li><a href="/accommodation04">2호실</a></li--%>
				<li><a href="/accommodation05">1·3·5호실</a></li>
				<li><a href="/accommodation06">11·12·13호실</a></li>
				<li><a href="/accommodation07">14호실</a></li>
			</ul>
			<div class="swiper gallary-swiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/accomm_c_1.webp'/>" alt="6,7,9,10호실_1">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/accomm_c_2.webp'/>" alt="6,7,9,10호실_2">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/accomm_c_3.webp'/>" alt="6,7,9,10호실_3">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/accomm_c_4.webp'/>" alt="6,7,9,10호실_4">
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
						<img src="<c:url value='/img/webp/accomm_c_1.webp'/>" alt="6,7,9,10호실_1">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/accomm_c_2.webp'/>" alt="6,7,9,10호실_2">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/accomm_c_3.webp'/>" alt="6,7,9,10호실_3">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/accomm_c_4.webp'/>" alt="6,7,9,10호실_4">
					</div>
					<div class="swiper-slide">
						<img src="<c:url value='/img/webp/toilet.webp'/>" alt="화장실">
					</div>
				</div>
    		</div>
			<article class="detail-box">
				<div class="card-container even">
					<div class="card">
						<div class="word-container">
							<h2>6호실</h2>
							<span>Room 6</span>
						</div>
						<div class="word-background"></div>
						<img src="<c:url value='/img/webp/accomm_ex_6.webp'/>" alt="6호실_전경">
						<button><a onclick="reserve6();">예약하기</a></button>
					</div>
					<div class="card">
						<div class="word-container">
							<h2>7호실</h2>
							<span>Room 7</span>
						</div>
						<img src="<c:url value='/img/webp/accomm_ex_7.webp'/>" alt="7호실_전경">
						<button><a onclick="reserve7();">예약하기</a></button>
					</div>
					<div class="card">
						<div class="word-container">
							<h2>9호실</h2>
							<span>Room 9</span>
						</div>
						<img src="<c:url value='/img/webp/accomm_ex_9.webp'/>" alt="9호실_전경">
						<button><a onclick="reserve9();">예약하기</a></button>
					</div>
					<div class="card">
						<div class="word-container">
							<h2>10호실</h2>
							<span>Room 10</span>
						</div>
						<img src="<c:url value='/img/webp/accomm_ex_10.webp'/>" alt="10호실_전경">
						<button><a onclick="reserve10();">예약하기</a></button>
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
							<span>체크인 : (성수기)14:00pm (비수기)15:00pm</span><span>체크아웃 : 11:00am</span>
						</li>
						<li>
							<h4>수용인원</h4>
							<span>2인</span>
						</li>
						<li>
							<h4>객실크기</h4>
							<span>6평</span>
						</li>
						<li>
							<h4>객실구성</h4>
							<span>침실 1개, 욕실 1개</span>
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
				<img src="<c:url value='/img/webp/map_c.webp'/>" alt="typeC 배치도">
			</article>
		</div>
	</main>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</html>