<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>태백호텔</title>
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
					const page = 8;
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
					const page = 5;
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
		
		var hcode = 'H0226';
		var start_date = $('#datepicker1').val();
		var end_date = $('#datepicker2').val();
		
// 		console.log('# start_date : '+start_date);
// 		console.log('# end_date : '+end_date);

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
		
// 		console.log('# rooms : '+rooms);
// 		console.log('# adults : '+adults);
// 		console.log('# children : '+children);
		
		var url = 'https://codybooking.com/reservation/?code='+hcode+'&checkIn='+start_date+'&checkOut='+end_date+'&adult='+adults+'&child='+children+'&room='+rooms;
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
				<li class="check-in">
					<span class="reserv-title">Check In</span>
					<input type="text" id="datepicker1">
					<button>체크인</button>
				</li>
				<li class="check-out">
					<span class="reserv-title">Check Out</span>
					<input type="text" id="datepicker2">
					<button>체크아웃</button>
				</li>
				<li class="room">
					<span class="reserv-title">Rooms</span>
					<select id="sel_rooms">
						<option value="1" selected>1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
				</li>
				<li class="headcount-adult">
					<span class="reserv-title">Adults</span>
					<select id="sel_adults">
						<option value="1" selected>1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
						<option value="13">13</option>
						<option value="14">14</option>
						<option value="15">15</option>
						<option value="16">16</option>
						<option value="17">17</option>
						<option value="18">18</option>
						<option value="19">19</option>
						<option value="20">20</option>
					</select>
				</li>
				<li class="headcount-children">
					<span class="reserv-title">Children</span>
					<select id="sel_children">
						<option value="0" selected>0</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
					</select>
				</li>
				<li class="search-button"><a onclick="reserve();">예약하기</a></li>
			</ul>
		</div>
		<p>태백호텔 <span>7월 7일 그랜드 오픈</span></p>
	</div>
	<div class="main-contents intro">
		<div class="container">
			<p>태백호텔은 민족의 영산인 태백산 국립공원 입구 청정지역에 위치한 가족호텔로서<br>수려한 자연 경관과 맑은 공기가 어우러진 곳이며,<br>특히 고원지대의 특징인 열대야 없는 시원한 여름철을 만끽하실 수 있습니다.<p>
			<p>고풍스런 외관 및 유럽풍의 품격있는 내부 인테리어를 자랑하고,<br>실속있는 각종 부대시설이 갖추어져 있어 다양하고 편안하게 이용하실 수 있습니다.<br>더불어 연중 개최되는 각종체육대회 및 전지훈련에 참가하는 고객님들께 맞춤 서비스를 제공합니다.</p>
			<p>넓은 야외 캠핑장이 마련되어 있어 요즘 트렌드에 맞는 글램핑도 동시에 즐기실 수 있습니다.</p>
		</div>
	</div>
	<div class="main-contents accomm">
		<div class="container">
			<h2>객실 <span> ACCOMMODATION</span></h2>
			<div class="swiper accommSwiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="프리미엄스위트" src="/img/accommodation09_01.jpg">
	    					<div class="card-container">
		    					<div class="card-title">
		    						<span>Premium Suite</span>
		    						<span>프리미엄스위트</span>
		    					</div>
		    					<div class="card-content">
		    						유럽풍의 엔틱 가구로 된 넓은 공간에서 부부, 연인들이 행복한 시간을 가질 수 있으며 두 개의 침실로 되어 있어 추가 숙박이 가능합니다.
		    					</div>
		    					<a href="/accommodation09">더 보기</a>
		    					<div class="accomm-gallary">
		    						<img class="active" alt="프리미엄스위트 사진1" src="/img/accommodation09_01.jpg">
		    						<img alt="프리미엄스위트 사진2" src="/img/accommodation09_02.jpg">
		    						<img alt="프리미엄스위트 사진3" src="/img/accommodation09_03.jpg">
		    						<img alt="프리미엄스위트 사진4" src="/img/accommodation09_04.jpg">
		    					</div>
		    				</div>
	    				</div>
					</div>
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="프리미엄패밀리" src="/img/accommodation10_01.jpg">
	    					<div class="card-container">
		    					<div class="card-title">
		    						<span>Premium Family</span>
		    						<span>프리미엄패밀리</span>
		    					</div>
		    					<div class="card-content">
		    						유럽풍의 엔틱 가구로 된 넓은 공간에서 산 전망을 즐기면서 가족들끼리 힐링의 시간을 가질 수 있는 객실입니다.
		    					</div>
		    					<a href="/accommodation10">더 보기</a>
		    					<div class="accomm-gallary">
		    						<img class="active" alt="프리미엄패밀리 사진1" src="/img/accommodation10_01.jpg">
		    						<img alt="프리미엄패밀리 사진2" src="/img/accommodation10_02.jpg">
		    						<img alt="프리미엄패밀리 사진3" src="/img/accommodation10_03.jpg">
		    						<img alt="프리미엄패밀리 사진4" src="/img/accommodation10_04.jpg">
		    					</div>
		    				</div>
	    				</div>
					</div>
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="로얄스위트" src="/img/accommodation06_01.jpg">
	    					<div class="card-container">
		    					<div class="card-title">
		    						<span>Royal Suite</span>
		    						<span>로얄스위트</span>
		    					</div>
		    					<div class="card-content">
		    						대부분의 객실이 산 전망을 즐길 수 있고 부부, 연인들이 즐거운 시간을 가질 수 있으며 두 개의 침실로 되어 있어 추가 숙박이 가능합니다.
		    					</div>
		    					<a href="/accommodation06">더 보기</a>
		    					<div class="accomm-gallary">
		    						<img class="active" alt="로얄스위트 사진1" src="/img/accommodation06_01.jpg">
		    						<img alt="로얄스위트 사진2" src="/img/accommodation06_02.jpg">
		    						<img alt="로얄스위트 사진3" src="/img/accommodation06_03.jpg">
		    						<img alt="로얄스위트 사진4" src="/img/accommodation06_04.jpg">
		    					</div>
		    				</div>
	    				</div>
					</div>
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="로얄패밀리" src="/img/accommodation07_01.jpg">
	    					<div class="card-container">
		    					<div class="card-title">
		    						<span>Royal Family</span>
		    						<span>로얄패밀리</span>
		    					</div>
		    					<div class="card-content">
		    						다소 넓은 공간으로 가족들이 여유롭게 지낼 수 있는 객실입니다.
		    					</div>
		    					<a href="/accommodation07">더 보기</a>
		    					<div class="accomm-gallary">
		    						<img class="active" alt="로얄패밀리 사진1" src="/img/accommodation07_01.jpg">
		    						<img alt="로얄패밀리 사진2" src="/img/accommodation07_02.jpg">
		    						<img alt="로얄패밀리 사진3" src="/img/accommodation07_03.jpg">
		    						<img alt="로얄패밀리 사진4" src="/img/accommodation07_04.jpg">
		    					</div>
		    				</div>
	    				</div>
					</div>
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="디럭스" src="/img/accommodation04_01.jpg">
	    					<div class="card-container">
		    					<div class="card-title">
		    						<span>Delux</span>
		    						<span>디럭스</span>
		    					</div>
		    					<div class="card-content">
		    						산 전망을 즐길 수 있으며 다소 저렴하게 부부, 연인들 끼리 힐링 할 수 있는 객실로 두 개의 침실로 되어 있어 추가 숙박이 가능합니다.
		    					</div>
		    					<a href="/accommodation04">더 보기</a>
		    					<div class="accomm-gallary">
		    						<img class="active" alt="디럭스 사진1" src="/img/accommodation04_01.jpg">
		    						<img alt="디럭스 사진2" src="/img/accommodation04_02.jpg">
		    						<img alt="디럭스 사진3" src="/img/accommodation04_03.jpg">
		    						<img alt="디럭스 사진4" src="/img/accommodation04_04.jpg">
		    					</div>
		    				</div>
	    				</div>
					</div>
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="디럭스패밀리" src="/img/accommodation05_01.jpg">
	    					<div class="card-container">
		    					<div class="card-title">
		    						<span>Delux Family</span>
		    						<span>디럭스패밀리</span>
		    					</div>
		    					<div class="card-content">
		    						산 전망을 즐길 수 있으며 다소 저렴하게 가족들끼리 힐링 할 수 있는 객실입니다.
		    					</div>
		    					<a href="/accommodation05">더 보기</a>
		    					<div class="accomm-gallary">
		    						<img class="active" alt="디럭스패밀리 사진1" src="/img/accommodation05_01.jpg">
		    						<img alt="디럭스패밀리 사진2" src="/img/accommodation05_02.jpg">
		    						<img alt="디럭스패밀리 사진3" src="/img/accommodation05_03.jpg">
		    						<img alt="디럭스패밀리 사진4" src="/img/accommodation05_04.jpg">
		    					</div>
		    				</div>
	    				</div>
					</div>
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="스탠다드트윈" src="/img/accommodation03_01.jpg">
	    					<div class="card-container">
		    					<div class="card-title">
		    						<span>Standard Twin</span>
		    						<span>스탠다드트윈</span>
		    					</div>
		    					<div class="card-content">
		    						작지만 두 개의 침실로 된 공간 활용도가 높은 객실입니다.
		    					</div>
		    					<a href="/accommodation03">더 보기</a>
		    					<div class="accomm-gallary">
		    						<img class="active" alt="스탠다드트윈 사진1" src="/img/accommodation03_01.jpg">
		    						<img alt="스탠다드트윈 사진2" src="/img/accommodation03_02.jpg">
		    						<img alt="스탠다드트윈 사진3" src="/img/accommodation03_03.jpg">
		    						<img alt="스탠다드트윈 사진4" src="/img/accommodation03_04.jpg">
		    					</div>
		    				</div>
	    				</div>
					</div>
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="스탠다드" src="/img/accommodation02_01.jpg">
	    					<div class="card-container">
		    					<div class="card-title">
		    						<span>Standard</span>
		    						<span>스탠다드</span>
		    					</div>
		    					<div class="card-content">
		    						침실이 1개인 객실로 가성비가 좋은 객실입니다.
		    					</div>
		    					<a href="/accommodation02">더 보기</a>
		    					<div class="accomm-gallary">
		    						<img class="active" alt="스탠다드 사진1" src="/img/accommodation02_01.jpg">
		    						<img alt="스탠다드 사진2" src="/img/accommodation02_02.jpg">
		    						<img alt="스탠다드 사진3" src="/img/accommodation02_03.jpg">
		    						<img alt="스탠다드 사진4" src="/img/accommodation02_04.jpg">
		    					</div>
		    				</div>
	    				</div>
					</div>
				</div>
				<div id="accomm-swiper-next" class="swiper-button-next"></div>
				<span id="accomm-page" class="page-number">1/8</span>
				<div id="accomm-swiper-prev" class="swiper-button-prev"></div>
			</div>
		</div>
	</div>
	<div class="main-contents dining">
		<div class="container">
			<h2>다이닝<span>DINING</span></h2>
			<div class="dining-card">
				<img src="/img/dining01_sub.png">
				<a href="/dining01">더 보기</a>
				<div class="card-title">
					<span>Korean Restaurant</span>
					<span>한식당</span>
				</div>
				<div class="card-content">
					주방장이 직접 고른 신선한 제철 식자재를 사용하여 한껏 정성스럽게 만들어진 음식을 맛 볼 수 있습니다.
				</div>
			</div>
			<div class="dining-picture">
				<ul>
					<li class="active"><a onclick="tab(1)">한식당</a></li>
					<li><a onclick="tab(2)">양식당&커피숍</a></li>
					<li><a onclick="tab(3)">뷔페(연회장)</a></li>
					<%--li><a onclick="tab(4)">커피숍</a></li--%>
				</ul>
				<img src="/img/dining01_main.png">
			</div>
		</div>
	</div>
	<div class="main-contents facil">
		<div class="container">
			<h2>부대시설 <span> FACILITIES</span></h2>
			<div class="swiper facilSwiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="워터풀 사진" src="/img/facilities01_main.png">
	    					<div class="card-container">
		    					<div class="card-title">
		    						<span>Water Pool</span>
		    						<span>워터풀</span>
		    					</div>
		    					<div class="card-content">
		    						돔형 워터풀으로 사계절 전천후 이용 가능하며 워터슬라이드가 설치되어 있어 가족 동반으로 물놀이를 여유롭게 즐길 수 있습니다. 숙박 고객은 할인도 받을 수 있습니다.
		    					</div>
		    					<a href="/facilities01">더 보기</a>
		    				</div>
	    				</div>
					</div>
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="사우나 사진" src="/img/facilities02_main.png">
	    					<div class="card-container">
		    					<div class="card-title">
		    						<span>Sauna</span>
		    						<span>사우나</span>
		    					</div>
		    					<div class="card-content">
		    						넓은 탕 내 공간의 여유로움과 다양한 사우나를 즐길 수 있으며 숙박 고객은 할인 받을 수 있습니다.
		    					</div>
		    					<a href="/facilities02">더 보기</a>
		    				</div>
	    				</div>
					</div>
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="웨딩홀 사진" src="/img/facilities03_main.png">
	    					<div class="card-container">
		    					<div class="card-title">
		    						<span>Wedding Hall<br>(Seminar Room)</span>
		    						<span>웨딩홀(세미나실)</span>
		    					</div>
		    					<div class="card-content">
		    						최첨단 장비를 구비하여 고객의 성공적인 비즈니스를 위한 다목적 회의실 겸 가족 단위의 소규모 예식부터 200여명 규모의 예식까지 고객님의 취향에 맞게 컨설팅해드리는 웨딩홀입니다.
		    					</div>
		    					<a href="/facilities03">더 보기</a>
		    				</div>
	    				</div>
					</div>
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="소연회장 사진" src="/img/facilities04_main.png">
	    					<div class="card-container">
		    					<div class="card-title">
		    						<span>Small Banquet Hall</span>
		    						<span>소연회장</span>
		    					</div>
		    					<div class="card-content">
		    						소규모 비즈니스 및 프라이빗 미팅을 진행 할 수 있으며, 세미나와 미팅에 필요한 다양한 시설과 서비스를합니다.
		    					</div>
		    					<a href="/facilities04">더 보기</a>
		    				</div>
	    				</div>
					</div>
					<div class="swiper-slide">
						<div class="so-card">
	    					<img alt="야영장 사진" src="/img/facilities10_main.png">
	    					<div class="card-container">
		    					<div class="card-title">
		    						<span>Camping Ground</span>
		    						<span>캠핑장</span>
		    					</div>
		    					<div class="card-content">
		    						요즘 트렌드인 글램핑을 같이 즐길 수 있습니다.<br>※ 숙박 고객은 할인 받을 수 있습니다.
		    					</div>
		    					<a href="/facilities10">더 보기</a>
		    				</div>
	    				</div>
					</div>
				</div>
				<div id="facil-swiper-next" class="swiper-button-next"></div>
				<span id="facil-page" class="page-number">1/5</span>
				<div id="facil-swiper-prev" class="swiper-button-prev"></div>
			</div>
		</div>
	</div>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</html>