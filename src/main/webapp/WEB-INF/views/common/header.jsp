<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=2">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://code.jquery.com/jquery-migrate-3.3.2.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="/js/swiper-bundle.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/css/swiper-bundle.min.css"/>
<link rel="stylesheet" href="/css/default.css?ver=1.035">
<link rel="stylesheet" href="/css/gnb.css?ver=1.035">
<link rel="stylesheet" href="/css/common.css?ver=1.036">
<link rel="stylesheet" href="/css/gnb_mobile.css?ver=1.035" media="(min-width: 0px) and (max-width: 1200px)">
<link rel="stylesheet" href="/css/common_mobile.css?ver=1.036" media="(min-width: 0px) and (max-width: 1200px)">
<script type="text/javascript">
$(document).ready(function() {
	let select_attr = $('header nav a, header nav button');
	let tablet_width = 1200;
	let pc_width = 1200;
	$(window).on("resize load", function(){
		var window_width = $(window).width();
		if(window_width < tablet_width){
			attrs();
		}else{
			removeAttrs();
			$("header nav").removeClass("on");
		}
	})

	$('.btn-nav').on('click', function(){
		var window_width = $(window).width();
		if(window_width < tablet_width){
			if($(this).hasClass('on')){
				$(this).removeClass('on');
				$('header nav').removeClass('on');
				$(".bg-gnb, .bg-header").removeClass('active');
				attrs();
			}else{
				$(this).addClass('on');
				$('header nav').addClass('on');
				$('header nav a:first').focus();
				$(".bg-gnb, .bg-header").addClass('active');
				removeAttrs();
			}
		}
	});

	function attrs(){
		select_attr.attr({
			'area-hidden': 'true',
			'tabindex' : '-1'
		});
	}

	function removeAttrs(){
		select_attr.removeAttr('area-hidden').removeAttr('tabindex');
	}

	/* pc */
	$(".gnb > li").on('mouseover focusin', function(){
		var window_width = $(window).width();
		if(window_width > pc_width){
			$(".bg-gnb, .bg-header").addClass('active');
			$(this).children('ul').addClass('active');
		}
	});
	$(".gnb > li").on('mouseleave', function(){
		var window_width = $(window).width();
		if(window_width > pc_width){
			$(".bg-gnb, .bg-header").removeClass('active');
			$(this).children('ul').removeClass('active');
			
		}
	});

	/* mobile */
	$('.gnb > li > a').on('click', function(e){
		var window_width = $(window).width();
		if(window_width < tablet_width){
			e.preventDefault();
			if($(this).parent().hasClass('on'))
				$('.gnb li.on').removeClass('on');
			else{
				$('.gnb li.on').removeClass('on');
				$(this).parent().addClass('on');
			}	
		}
	});
		
	
});
function popup_open(){
	$('.dim').show();
	$('.email-container').show();
}
function popup_close(){
	$('.dim').hide();
	$('.email-container').hide();
}
function family_open(value){
	if(value != 'none')
		window.open(value,'_blank');
}

function reserveDetail(){
	
	var hcode = 'H0226';
	var start_date = '';
	var end_date = '';
	var now = new Date();
	var tom = new Date();
	now = fn_lz(now.getFullYear(), 4) + '-' + fn_lz(now.getMonth() + 1, 2) + '-' + fn_lz(now.getDate(), 2);
	tom.setDate(tom.getDate() + 1);
	tom = fn_lz(tom.getFullYear(), 4) + '-' + fn_lz(tom.getMonth() + 1, 2) + '-' + fn_lz(tom.getDate(), 2);

	if(now < "2022-07-07"){
		start_date = '2022-07-07';
		end_date = '2022-07-08';
	}else{
		start_date = now;
		end_date = tom;
	}
	
	var url = 'https://codybooking.com/reservation/?code='+hcode+'&checkIn='+start_date+'&checkOut='+end_date;
	window.open(url, "_blank");
}

function fn_lz(n, digits) {
    var zero = '';
    n = n.toString();

    if (n.length < digits) {
        for (i = 0; i < digits - n.length; i++)
            zero += '0';
    }
    return zero + n;
}
</script>
<header id="header"> 
	<h1>
		<span class="korean-logo">태백호텔</span>
		<span class="english-logo">TAEBAEK HOTEL</span>
		<a href="/"><button class="hide">home</button></a>
	</h1>
	<h2 class="hide">메뉴</h2>
	<nav>
		<%--div class="nav-header">
			<a href="/"><button class="hide">home</button></a>
			<span class="logo">TAEBAEK HOTEL</span>
			<button class="close"><span class="hide">메뉴 닫기</span></button>
		</div--%>
		<ul class="quick-menu">
			<li><a onclick="reserveDetail();">예약확인</a></li>
			<li><a href="/hotelinfo03">오시는길</a></li>
		</ul>
		<ul class="gnb">
			<li>
				<a href="/hotelinfo01">호텔소개</a>
				<ul>
					<li><a href="/hotelinfo01">인사말</a></li>
					<li><a href="/hotelinfo02">이용안내</a></li>
					<li><a href="/hotelinfo03">오시는 길</a></li>
				</ul>
			</li>
			<li>
				<a href="/accommodation02">객실</a>
				<ul>
					<li><a href="/accommodation02">스탠다드</a>
						<ul>
							<li><a href="/accommodation02">스탠다드더블</a></li>
							<li><a href="/accommodation01">스탠다드온돌</a></li>
							<li><a href="/accommodation03">스탠다드트윈</a></li>
						</ul>
					</li>
					<li><a href="/accommodation04">디럭스</a>
						<ul>
							<li><a href="/accommodation04">디럭스</a></li>
							<li><a href="/accommodation05">디럭스패밀리</a></li>
						</ul>
					</li>
					<li><a href="/accommodation06">로얄</a>
						<ul>
							<li><a href="/accommodation06">로얄스위트</a></li>
							<li><a href="/accommodation07">로얄패밀리</a></li>
						</ul>
					</li>
					<li><a href="/accommodation08">프리미엄</a>
						<ul>
							<li><a href="/accommodation08">프리미엄온돌</a></li>
							<li><a href="/accommodation09">프리미엄스위트</a></li>
							<li><a href="/accommodation10">프리미엄패밀리</a></li>
						</ul>
					</li>
				</ul>
			</li>
			<li>
				<a href="/dining01">다이닝</a>
				<ul>
					<li><a href="/dining01">한식당</a></li>
					<li><a href="/dining02">양식당 & 커피숍</a></li>
					<li><a href="/dining03">뷔페(연회장)</a></li>
 					<%--li><a href="/dining04">커피숍</a></li--%>
				</ul>
			</li>
			<li>
				<a href="/facilities01">부대시설</a>
				<ul>
					<li><a href="/facilities01">워터풀</a></li>
					<li><a href="/facilities02">사우나</a></li>
					<li><a href="/facilities03">웨딩홀(세미나실)</a></li>
					<li><a href="/facilities04">소연회장</a></li>
					<%--li><a href="/facilities05">바이오포톤세라피실</a></li--%>
					<li><a href="/facilities06">미용실</a></li>
					<li><a href="/facilities07">베이커리 & 카페</a></li>
					<li><a href="/facilities08">편의점</a></li>
					<li><a href="/facilities12">분식 & 카페</a></li>
					<%--li><a href="/facilities09">공용세탁실</a></li--%>
					<li><a href="/facilities10">캠핑장</a></li>
					<li><a href="/facilities11">강변테라스</a></li>
				</ul>
			</li>
		</ul>
	</nav>
	<button class="btn-nav">
		<a href="javascript:;">
			<span class="hide">전체 메뉴</span>
			<i class="r1"></i>
			<i class="r2"></i>
			<i class="r3"></i>
		</a>
	</button>
</header>
<div class="bg-header"></div>
<div class="bg-gnb"></div>