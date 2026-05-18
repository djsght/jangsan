<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>장산콘도</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://code.jquery.com/jquery-migrate-3.3.2.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<link rel="stylesheet" href="/css/main.css?ver=1.035">
<link rel="stylesheet" href="/css/main_mobile.css?ver=1.035" media="(min-width: 0px) and (max-width: 1200px)">
<script type="text/javascript">
	$(document).ready(function(){
		let playState = true;
		var swiper = new Swiper(".accommSwiper", {
			slidesPerView: 1,
			spaceBetween: 0,
			simulateTouch: false,
			loop: true,
			autoHeight: true,
			navigation: {
				nextEl: "#accomm-swiper-next",
				prevEl: "#accomm-swiper-prev",
			},
			on:{
				slideChangeTransitionEnd: function(){
					const page = 6;
					let = index = this.activeIndex
					if(index == 0 || index == (page+1)){
						index = Math.abs(index - page);
					}
					$('#accomm-page').text(index+"/"+page);
				}
			}
		});

		var swiper = new Swiper(".facilSwiper", {
			slidesPerView: 1,
			spaceBetween: 0,
			simulateTouch: false,
			loop: true,
			autoHeight: true,
			navigation: {
				nextEl: "#facil-swiper-next",
				prevEl: "#facil-swiper-prev",
			},
			on:{
				slideChangeTransitionEnd: function(){
					const page = 12;
					let = index = this.activeIndex
					if(index == 0 || index == (page+1)){
						index = Math.abs(index - page);
					}
					$('#facil-page').text(index+"/"+page);
				}
			}
		});

		$('.accomm-gallary img').on('click',function(){
			if(!$(this).hasClass('active')){
				$(this).siblings(".active").removeClass('active');
				$(this).addClass('active');
				console.log($(this).attr('src'));
				$(this).closest('.so-card').children('img').attr('src',$(this).attr('src'));
			}
		})

		$.datepicker.setDefaults({
            dateFormat: 'yy-mm-dd', //Input Display Format 변경
			closeText: "닫기",
    		currentText: "오늘",
    		prevText: '이전 달',
    		nextText: '다음 달',
    		monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    		monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    		dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    		dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    		dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    		weekHeader: "주",
    		showMonthAfterYear: true,
    		yearSuffix: '년'
		});
		$('#datepicker1').datepicker();
		$('#datepicker2').datepicker();
		
		var now = new Date();
		now = leadingZeros(now.getFullYear(), 4) + '-' + leadingZeros(now.getMonth() + 1, 2) + '-' + leadingZeros(now.getDate(), 2);
		
		if(now < "2022-07-07"){
	 		$('#datepicker1').datepicker('setDate', new Date(2022, 6, 7, 0, 0, 0, 0));
	 		$('#datepicker2').datepicker('setDate', new Date(2022, 6, 8, 0, 0, 0, 0));
		}else{
			$('#datepicker1').datepicker('setDate', 'today');
			$('#datepicker2').datepicker('setDate', '+1D');	
		}

		$('.reservation-bar li button').on('click',function(e){
			if($(this).prev('input').length > 0)
				$(this).prev().focus();
		})	
	});
	
	function reserve(){
		
//		var hcode = 'H0226';
//		var start_date = $('#datepicker1').val();
//		var end_date = $('#datepicker2').val();
		
// 		console.log('# start_date : '+start_date);
// 		console.log('# end_date : '+end_date);
/*
		if(end_date == start_date){
			alert('체크아웃과 체크인이 동일할 수 없습니다.');
			return;
		}
		
		if(end_date < start_date){
			alert('체크아웃이 체크인보다 빠를수 없습니다.');
			return;
		}
		
		if(start_date < "2022-07-07"){
			alert('오픈일 이전에는 호텔을 이용할 수 없습니다.');
			return;
		}
		
		if(end_date < "2022-07-08"){
			alert('오픈일 이전에는 호텔을 이용할 수 없습니다.');
			return;
		}
		
		var rooms = $('#sel_rooms option:selected').val();
		var adults = $('#sel_adults option:selected').val();
		var children = '0';
		if($('#sel_children option:selected').val() > 0){
			children =  $('#sel_children option:selected').val();
		}
*/		
// 		console.log('# rooms : '+rooms);
// 		console.log('# adults : '+adults);
// 		console.log('# children : '+children);
		
//		var url = 'https://codybooking.com/reservation/?code='+hcode+'&checkIn='+start_date+'&checkOut='+end_date+'&adult='+adults+'&child='+children+'&room='+rooms;
		var url = 'https://pcmap.place.naver.com/restaurant/12382930/booking?entry=pll&from=map&fromNxList=true&fromPanelNum=1&additionalHeight=76&timestamp=202605051459&locale=ko&svcName=map_pcv5';
		window.open(url, "_blank");
	}
	
	function leadingZeros(n, digits) {
	    var zero = '';
	    n = n.toString();

	    if (n.length < digits) {
	        for (i = 0; i < digits - n.length; i++)
	            zero += '0';
	    }
	    return zero + n;
	}


	function tab(number){
		if(!$('.dining-picture ul li:nth-child('+number+')').hasClass('active')){
			$('.dining-picture ul li.active').removeClass('active');
			$('.dining-picture ul li:nth-child('+number+')').addClass('active');
			/* 각종 바뀔 그림과 글을 넣을 자리*/
			switch(number){
				case 1:
					$('.dining-card .card-title span:first-child').html('Korean Restaurant');
					$('.dining-card .card-title span:last-child').html('한식당');
					$('.dining-card .card-content').html('주방장이 직접 고른 신선한 제철 식자재를 사용하여 한껏 정성스럽게 만들어진 음식을 맛 볼 수 있습니다.');
					$('.dining-card a').attr('href','/dining01');
					$('.dining-card img').attr('src','/img/dining01_sub.png');
					$('.dining-picture img').attr('src','/img/dining01_main.png');
					break;
				case 2:
					$('.dining-card .card-title span:first-child').html('Western Restaurant <br>& Coffee shop');
					$('.dining-card .card-title span:last-child').html('양식당&커피숍');
					$('.dining-card .card-content').html('매일 매일 제공되는 신선한 재료로 세련된 셰프의 손끝에서 만들어진 품격있는 요리를 즐길 수 있습니다.<br>커피 한잔의 여유로움과 편안한 휴식을 즐기며 담소를 나눌 수 있는 공간입니다.');
					$('.dining-card a').attr('href','/dining02');
					$('.dining-card img').attr('src','/img/dining02_sub.png');
					$('.dining-picture img').attr('src','/img/dining02_main.png');
					break;
				case 3:
					$('.dining-card .card-title span:first-child').html('Banquet Hall');
					$('.dining-card .card-title span:last-child').html('뷔페(연회장)');
					$('.dining-card .card-content').html('맛과 건강을 고려한 다양한 음식들을 즐길 수 있으며 연회 목적에 따라 비즈니스 미팅, 세미나&컨퍼런스, 식사를 겸한 가족, 단체연회 등 다양한 형태로 행사를  진행하실 수 있습니다. 단체 숙박 고객들은 할인도 받을 수 있습니다.');
					$('.dining-card a').attr('href','/dining03');
					$('.dining-card img').attr('src','/img/dining03_sub.png');
					$('.dining-picture img').attr('src','/img/dining03_main.png');
					break;
				case 4:
					$('.dining-card .card-title span:first-child').html('Coffee shop');
					$('.dining-card .card-title span:last-child').html('커피숍');
					$('.dining-card .card-content').html('커피 한잔의 여유로움과 편안한 휴식을 즐기며 담소를 나눌 수 있는 공간입니다.');
					$('.dining-card a').attr('href','/dining04');
					$('.dining-card img').attr('src','/img/dining-card.png');
					$('.dining-picture img').attr('src','/img/facil_test.png');
					break;
			}
		}
	}
</script>
<body>
	<div class="main-picture">
		<div class="reservation-bar-container">
			<ul class="reservation-bar">
				<li class="search-button"><a onclick="reserve();">예약하기</a></li>
			</ul>
		</div>
	</div>
	<div class="main-contents intro">
		<div class="container">
			<p>하늘 아래 첫 휴식처, 해발 1,025m 장산콘도와 레스토랑은 고객님께 잊지 못할 이국적인 정취를 선사합니다.</p>
			<p>태백과 함백산의 푸른 녹음이 어우러진 이곳은 때 묻지 않은 순수 자연의 숨결을 그대로 간직하고 있는 청정 힐링 공간입니다.</p>
			<p>봄의 생동감, 여름의 시원한 바람, 가을의 붉은 단풍, 그리고 겨울 주목의 신비로움까지 대자연의 경이로움을 온전히 누려보세요.</p>
			<p>장산콘도에서의 시간은 단순한 머무름을 넘어, 지친 몸과 마음을 다시 세우는 멋진 재충전의 기회가 될 것입니다.</p>
			<p>오롯이 자연과 하나 되는 이곳에서, 소중한 사람들과 함께 오랫동안 기억될 아름다운 여행의 페이지를 기록해 보시기 바랍니다.</p>
		</div>
	</div>
	<div class="main-contents accomm">
		<div class="container">
			<h2>객실 <span> ACCOMMODATION</span></h2>
			<div class="swiper accommSwiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="typeA 사진" src="<c:url value='/img/webp/accomm_a_1.webp'/>">
	    					<div class="card-container">
		    					<div class="card-title">
		    						<span>Room 8</span>
		    						<span>8호실</span>
		    					</div>
		    					<div class="card-content">
		    						유럽풍의 엔틱 가구로 된 넓은 공간에서 부부, 연인들이 행복한 시간을 가질 수 있으며 두 개의 침실로 되어 있어 추가 숙박이 가능합니다.
		    					</div>
		    					<a href="/accommodation01">더 보기</a>
		    					<div class="accomm-gallary">
									<img class="active" alt="typeA 사진1" src="<c:url value='/img/webp/accomm_a_1.webp'/>">
									<img alt="typeA 사진2" src="<c:url value='/img/webp/accomm_a_2.webp'/>">
		    					</div>
		    				</div>
	    				</div>
					</div>
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="typeB 사진" src="<c:url value='/img/webp/accomm_b_1.webp'/>">
	    					<div class="card-container">
		    					<div class="card-title">
		    						<span>Room 15</span>
		    						<span>15호실</span>
		    					</div>
		    					<div class="card-content">
		    						유럽풍의 엔틱 가구로 된 넓은 공간에서 산 전망을 즐기면서 가족들끼리 힐링의 시간을 가질 수 있는 객실입니다.
		    					</div>
		    					<a href="/accommodation02">더 보기</a>
		    					<div class="accomm-gallary">
									<img class="active" alt="typeB 사진1" src="<c:url value='/img/webp/accomm_b_1.webp'/>">
									<img alt="typeB 사진2" src="<c:url value='/img/webp/accomm_b_2.webp'/>">
		    					</div>
		    				</div>
	    				</div>
					</div>
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="typeC 사진" src="<c:url value='/img/webp/accomm_c_1.webp'/>">
	    					<div class="card-container">
		    					<div class="card-title">
									<span>Room 6,7,9,10</span>
		    						<span>6,7,9,10호실</span>
		    					</div>
		    					<div class="card-content">
		    						대부분의 객실이 산 전망을 즐길 수 있고 부부, 연인들이 즐거운 시간을 가질 수 있으며 두 개의 침실로 되어 있어 추가 숙박이 가능합니다.
		    					</div>
		    					<a href="/accommodation03">더 보기</a>
		    					<div class="accomm-gallary">
									<img class="active" alt="typeC 사진1" src="<c:url value='/img/webp/accomm_c_1.webp'/>">
									<img alt="typeC 사진2" src="<c:url value='/img/webp/accomm_c_2.webp'/>">
									<img alt="typeC 사진3" src="<c:url value='/img/webp/accomm_c_3.webp'/>">
									<img alt="typeC 사진4" src="<c:url value='/img/webp/accomm_c_4.webp'/>">
		    					</div>
		    				</div>
	    				</div>
					</div>
					<%--div class="swiper-slide">
						<div class="so-card">
	    					<img alt="typeD 사진" src="/img/ready.svg">
	    					<div class="card-container">
		    					<div class="card-title">
									<span>Room 2</span>
		    						<span>2호실</span>
		    					</div>
		    					<div class="card-content">
		    						다소 넓은 공간으로 가족들이 여유롭게 지낼 수 있는 객실입니다.
		    					</div>
		    					<a href="/accommodation04">더 보기</a>
		    					<div class="accomm-gallary">
		    						<img class="active" alt="공사중"  src="/img/ready.svg">
		    					</div>
		    				</div>
	    				</div>
					</div--%>
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="typeE 사진" src="<c:url value='/img/webp/accomm_e_1.webp'/>">
	    					<div class="card-container">
		    					<div class="card-title">
									<span>Room 1,3,5</span>
		    						<span>1,3,5호실</span>
		    					</div>
		    					<div class="card-content">
		    						산 전망을 즐길 수 있으며 다소 저렴하게 부부, 연인들 끼리 힐링 할 수 있는 객실로 두 개의 침실로 되어 있어 추가 숙박이 가능합니다.
		    					</div>
		    					<a href="/accommodation05">더 보기</a>
		    					<div class="accomm-gallary">
									<img class="active" alt="typeE 사진1" src="<c:url value='/img/webp/accomm_e_1.webp'/>">
									<img alt="typeE 사진2" src="<c:url value='/img/webp/accomm_e_2.webp'/>">
									<img alt="typeE 사진3" src="<c:url value='/img/webp/accomm_e_3.webp'/>">
									<img alt="typeE 사진4" src="<c:url value='/img/webp/accomm_e_4.webp'/>">
		    					</div>
		    				</div>
	    				</div>
					</div>
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="typeF 사진" src="<c:url value='/img/webp/accomm_f_1.webp'/>">
	    					<div class="card-container">
		    					<div class="card-title">
									<span>Room 11,12,13</span>
		    						<span>11,12,13호실</span>
		    					</div>
		    					<div class="card-content">
		    						산 전망을 즐길 수 있으며 다소 저렴하게 가족들끼리 힐링 할 수 있는 객실입니다.
		    					</div>
		    					<a href="/accommodation06">더 보기</a>
		    					<div class="accomm-gallary">
									<img class="active" alt="typeF 사진1" src="<c:url value='/img/webp/accomm_f_1.webp'/>">
									<img alt="typeF 사진2" src="<c:url value='/img/webp/accomm_f_2.webp'/>">
									<img alt="typeF 사진3" src="<c:url value='/img/webp/accomm_f_3.webp'/>">
									<img alt="typeF 사진4" src="<c:url value='/img/webp/accomm_f_4.webp'/>">
		    					</div>
		    				</div>
	    				</div>
					</div>
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="typeG 사진" src="<c:url value='/img/webp/accomm_g_1.webp'/>">
	    					<div class="card-container">
		    					<div class="card-title">
									<span>Room 14</span>
		    						<span>14호실</span>
		    					</div>
		    					<div class="card-content">
		    						작지만 두 개의 침실로 된 공간 활용도가 높은 객실입니다.
		    					</div>
		    					<a href="/accommodation07">더 보기</a>
		    					<div class="accomm-gallary">
									<img class="active" alt="typeG 사진1" src="<c:url value='/img/webp/accomm_g_1.webp'/>">
									<img alt="typeG 사진2" src="<c:url value='/img/webp/accomm_g_2.webp'/>">
									<img alt="typeG 사진3" src="<c:url value='/img/webp/accomm_g_3.webp'/>">
									<img alt="typeG 사진4" src="<c:url value='/img/webp/accomm_g_4.webp'/>">
		    					</div>
		    				</div>
	    				</div>
					</div>
				</div>
				<div id="accomm-swiper-next" class="swiper-button-next"></div>
				<span id="accomm-page" class="page-number">1/6</span>
				<div id="accomm-swiper-prev" class="swiper-button-prev"></div>
			</div>
		</div>
	</div>
	<div class="main-contents dining">
		<div class="container">
			<h2>레스토랑<span>Restaurant</span></h2>
			<div class="dining-card">
				<img src="<c:url value='/img/webp/restaurant_sub.webp'/>">
				<a href="/dining01">더 보기</a>
				<div class="card-title">
					<span>Jangsan Restaurant</span>
					<span>장산 레스토랑</span>
				</div>
				<div class="card-content">
					주방장이 직접 고른 신선한 제철 식자재를 사용하여 한껏 정성스럽게 만들어진 음식을 맛 볼 수 있습니다.
				</div>
			</div>
			<div class="dining-picture">
				<%--ul>
					<li class="active"><a onclick="tab(1)">한식당</a></li>
					<li><a onclick="tab(2)">양식당&커피숍</a></li>
					<li><a onclick="tab(3)">뷔페(연회장)</a></li>
					<li><a onclick="tab(4)">커피숍</a></li>
				</ul--%>
				<img src="<c:url value='/img/webp/restaurant_1.webp'/>">
			</div>
		</div>
	</div>
	<div class="main-contents facil">
		<div class="container">
			<h2 class="tour">주변관광지 <span> TOURIST ATTRACTIONS</span></h2>
			<div class="swiper facilSwiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="만항재 사진" src="<c:url value='/img/webp/tour_1.webp'/>">
	    					<div class="card-container">
		    					<div class="card-title">
		    						<span>만항재</span>
		    						<span>만항재</span>
		    					</div>
		    					<div class="card-content">
		    						만항재는 해발 1,330m로 우리나라에서 차로 갈 수 있는 가장 높은 고개이며, 굽이치는 능선을 따라 환상적인 드라이브 코스를 선사합니다. 이곳의 산상의 화원은 계절마다 형형색색의 야생화가 만개하여 천상의 정원을 연상시키며, 울창한 낙엽송 숲길이 매력적인 하늘숲공원은 고산지대의 청량한 공기 속에서 여유로운 산책을 즐기기에 더할 나위 없이 좋습니다. 겨울이면 눈꽃이 만발하는 풍경 덕분에 사계절 내내 많은 이들이 찾는 자연의 쉼터입니다.
		    					</div>
		    					<a href="/facilities01">더 보기</a>
		    				</div>
	    				</div>
					</div>
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="함백산 사진" src="<c:url value='/img/webp/tour_2.webp'/>">
	    					<div class="card-container">
		    					<div class="card-title">
		    						<span>함백산</span>
		    						<span>함백산</span>
		    					</div>
		    					<div class="card-content">
		    						함백산은 해발 1,573m로 우리나라에서 여섯 번째로 높은 산이며, 정상 부근까지 도로가 잘 정비되어 있어 남녀노소 누구나 비교적 쉽게 동해안의 일출과 장엄한 운해를 감상할 수 있는 곳입니다. 겨울에는 환상적인 눈꽃 터널이, 여름에는 시원한 고산지대의 바람과 야생화가 어우러져 사계절 내내 등산객과 사진작가들의 발길이 끊이지 않는 명산입니다.
		    					</div>
		    					<a href="/facilities01">더 보기</a>
		    				</div>
	    				</div>
					</div>
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="정암사 사진" src="<c:url value='/img/webp/tour_3.webp'/>">
	    					<div class="card-container">
		    					<div class="card-title">
		    						<span>정암사</span>
		    						<span>정암사</span>
		    					</div>
		    					<div class="card-content">
		    						정암사는 신라 시대 자장율사가 부처님의 진신사리를 모시고 창건한 사찰로, 우리나라 5대 적멸보궁 중 하나로 꼽히는 유서 깊은 곳입니다. 경내 산비탈에 세워진 보물 제410호 수마노탑은 정암사를 상징하는 대표적인 문화재이며, 사찰을 감싸고 흐르는 계곡은 천연기념물인 열목어 서식지로 지정되어 있을 만큼 청정한 자연경관을 자랑합니다.
		    					</div>
		    					<a href="/facilities01">더 보기</a>
		    				</div>
	    				</div>
					</div>
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="태백산천제단 사진" src="<c:url value='/img/webp/tour_4.webp'/>">
	    					<div class="card-container">
		    					<div class="card-title">
		    						<span>태백산 천제단</span>
		    						<span>태백산 천제단</span>
		    					</div>
		    					<div class="card-content">
		    						민족의 영산이라 불리는 태백산 정상에 위치한 천제단은 예로부터 하늘에 제사를 지내던 신성한 역사적 명소이자 장엄한 백두대간의 능선이 한눈에 들어오는 최고의 조망터이며, 사계절 수려한 풍경과 특히 겨울철 환상적인 눈꽃 비경을 자랑해 일상의 스트레스를 비우고 청정한 기운을 얻고 가기 좋은 필수 코스입니다.
		    					</div>
		    					<a href="/facilities01">더 보기</a>
		    				</div>
	    				</div>
					</div>
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="칠랑이계곡 사진" src="<c:url value='/img/webp/tour_5.webp'/>">
	    					<div class="card-container">
		    					<div class="card-title">
		    						<span>칠랑이계곡</span>
		    						<span>칠랑이계곡</span>
		    					</div>
		    					<div class="card-content">
		    						영월 상동읍의 청정 자연 속에 숨겨진 칠랑이계곡은 기암괴석 사이로 옥빛의 맑고 찬 계곡물이 굽이쳐 흐르는 천혜의 힐링 명소이며, 울창한 숲이 천연 그늘을 만들어주어 한여름 무더위를 피하기에 더없이 훌륭한 장소이자 복잡한 도심을 벗어나 온전한 자연의 소리를 들으며 휴식을 취하고 싶은 여행객들에게 최고의 쉼터를 제공합니다.
		    					</div>
		    					<a href="/facilities01">더 보기</a>
		    				</div>
	    				</div>
					</div>
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="태백석탄박물관 사진" src="<c:url value='/img/webp/tour_6.webp'/>">
	    					<div class="card-container">
		    					<div class="card-title">
		    						<span>태백석탄박물관</span>
		    						<span>태백석탄박물관</span>
		    					</div>
		    					<div class="card-content">
		    						태백산 당골계곡 초입에 자리한 태백석탄박물관은 과거 대한민국 산업화를 이끈 석탄 산업의 역사와 광부들의 삶을 생생하게 기록한 국내 최대 규모의 석탄 전문 박물관이며, 모의 갱도 체험 등 다채로운 전시를 통해 아이들에게는 유익한 교육의 기회를, 어른들에게는 아련한 향수를 선사합니다.
		    					</div>
		    					<a href="/facilities01">더 보기</a>
		    				</div>
	    				</div>
					</div>
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="황지연못 사진" src="<c:url value='/img/webp/tour_7.webp'/>">
	    					<div class="card-container">
		    					<div class="card-title">
		    						<span>황지연못</span>
		    						<span>황지연못</span>
		    					</div>
		    					<div class="card-content">
		    						황지연못은 영남의 젖줄인 낙동강 1,300리의 물길이 시작되는 발원지로, 태백 시내 중심부에 위치하여 시민들과 관광객들에게 편안한 휴식처를 제공하는 의미 깊은 명소입니다. 연못에서는 가뭄에도 마르지 않고 하루 약 5,000톤의 맑은 물이 솟아오르며, 상도(上池)·중도(中池)·하도(下池) 세 개의 연못이 어우러진 신비로운 풍광과 함께 주변에 조성된 공원은 산책하기에 매우 좋습니다.
		    					</div>
		    					<a href="/facilities01">더 보기</a>
		    				</div>
	    				</div>
					</div>
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="태백365세이프타운 사진" src="<c:url value='/img/webp/tour_8.webp'/>">
	    					<div class="card-container">
		    					<div class="card-title">
		    						<span>태백 365세이프타운</span>
		    						<span>태백 365세이프타운</span>
		    					</div>
		    					<div class="card-content">
		    						국내 최대 규모를 자랑하는 청소년 수련 및 안전 체험 테마파크인 태백 365세이프타운은 산불, 지진, 대테러 등 다양한 재난 상황을 3D·4D 시뮬레이터로 생동감 넘치게 체험하며 대처 능력을 배울 수 있는 곳이며, 다채로운 액티비티 시설과 케이블카까지 갖추고 있어 온 가족이 역동적인 하루를 보내기에 제격입니다.
		    					</div>
		    					<a href="/facilities01">더 보기</a>
		    				</div>
	    				</div>
					</div>
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="삼탄아트마인 사진" src="<c:url value='/img/webp/tour_9.webp'/>">
	    					<div class="card-container">
		    					<div class="card-title">
		    						<span>삼탄아트마인</span>
		    						<span>삼탄아트마인</span>
		    					</div>
		    					<div class="card-content">
		    						실제 폐광된 삼척탄좌 시설을 창조적인 예술 공간으로 재탄생시킨 감성적인 복합문화단지인 삼탄아트마인은 거친 탄광의 흔적과 현대 미술 작품이 묘한 조화를 이루며 독특한 분위기를 자아내는 곳이며, 유명 드라마 촬영지로도 널리 알려져 있어 특별한 인생 사진을 남기고 싶은 여행객들에게 인기가 높습니다.
		    					</div>
		    					<a href="/facilities01">더 보기</a>
		    				</div>
	    				</div>
					</div>
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="하이원워터월드 사진" src="<c:url value='/img/webp/tour_10.webp'/>">
	    					<div class="card-container">
		    					<div class="card-title">
		    						<span>하이원 워터월드</span>
		    						<span>하이원 워터월드</span>
		    					</div>
		    					<div class="card-content">
		    						사계절 내내 역동적인 물놀이를 즐길 수 있는 하이원 워터월드는 거대한 파도풀과 아찔한 슬라이드는 물론 피로를 풀 수 있는 따뜻한 힐링 스파 시설까지 완벽하게 갖춘 대형 테마파크이며, 여름철 시원한 스릴을 즐기려는 젊은 층부터 사계절 내내 안전한 물놀이를 원하는 가족 단위 여행객까지 모두를 만족시키는 최고의 휴양 시설입니다.
		    					</div>
		    					<a href="/facilities01">더 보기</a>
		    				</div>
	    				</div>
					</div>
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="구문소 사진" src="<c:url value='/img/webp/tour_11.webp'/>">
	    					<div class="card-container">
		    					<div class="card-title">
		    						<span>구문소</span>
		    						<span>구문소</span>
		    					</div>
		    					<div class="card-content">
		    						천연기념물로 지정된 신비로운 지형인 구문소는 거대한 석문 사이로 강물이 산을 뚫고 지나가는 독특하고 웅장한 자연의 기적을 감상할 수 있는 명소이며, 수억 년의 세월이 새겨진 석회암 암벽과 고생대 화석지층이 잘 보존되어 있어 마치 시간 여행을 떠난 듯한 이색적인 풍경 속에서 멋진 사진을 남길 수 있습니다.
		    					</div>
		    					<a href="/facilities01">더 보기</a>
		    				</div>
	    				</div>
					</div>
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="별마로천문대 사진" src="<c:url value='/img/webp/tour_12.webp'/>">
	    					<div class="card-container">
		    					<div class="card-title">
		    						<span>별마로천문대</span>
		    						<span>별마로천문대</span>
		    					</div>
		    					<div class="card-content">
		    						해발 799m의 봉래산 정상에 위치하여 '별을 보는 고요한 정상'이라는 뜻을 가진 별마로천문대는 시민천문대 중 최대 규모의 주망원경을 통해 밤하늘의 신비로운 별자리와 행성을 생생하게 관측할 수 있는 감성 여행지이며, 천문대 주변 활공장에서 내려다보는 영월 시내의 아늑하고 탁 트인 야경이 환상적인 감동을 선사해 연인과 가족들에게 평생 잊지 못할 밤을 선물합니다.
		    					</div>
		    					<a href="/facilities01">더 보기</a>
		    				</div>
	    				</div>
					</div>
</div>
				<div id="facil-swiper-next" class="swiper-button-next"></div>
				<span id="facil-page" class="page-number">1/12</span>
				<div id="facil-swiper-prev" class="swiper-button-prev"></div>
			</div>
		</div>
	</div>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</html>