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
	<div class="forward facilities"></div>
	<main>
		<div class="container">
			<article class="tour">
				<h2>주변관광지<span>Nearby Tourist Attractions</span></h2>
				<div class="card-row">
			        <div class="card-image">
		                <img src="<c:url value='/img/webp/tour_1.webp'/>" alt="만항재">
			        </div>
			        <div class="card-content">
			            <h2 class="title">만항재</h2>
			            <p class="description">
			                만항재는 해발 1,330m로 우리나라에서 차로 갈 수 있는 가장 높은 고개이며, 굽이치는 능선을 따라 환상적인 드라이브 코스를 선사합니다. 이곳의 산상의 화원은 계절마다 형형색색의 야생화가 만개하여 천상의 정원을 연상시키며, 울창한 낙엽송 숲길이 매력적인 하늘숲공원은 고산지대의 청량한 공기 속에서 여유로운 산책을 즐기기에 더할 나위 없이 좋습니다. 겨울이면 눈꽃이 만발하는 풍경 덕분에 사계절 내내 많은 이들이 찾는 자연의 쉼터입니다.
			            </p>
			            <p class="distance">장산콘도와의 거리 : 차량 이용 시 약 10분 소요</p>
			        </div>
			    </div>
			    <div class="card-row reverse">
			        <div class="card-image">
		                <img src="<c:url value='/img/webp/tour_2.webp'/>" alt="함백산">
			        </div>
			        <div class="card-content">
			            <h2 class="title">함백산</h2>
			            <p class="description">
			                함백산은 해발 1,573m로 우리나라에서 여섯 번째로 높은 산이며, 정상 부근까지 도로가 잘 정비되어 있어 남녀노소 누구나 비교적 쉽게 동해안의 일출과 장엄한 운해를 감상할 수 있는 곳입니다. 겨울에는 환상적인 눈꽃 터널이, 여름에는 시원한 고산지대의 바람과 야생화가 어우러져 사계절 내내 등산객과 사진작가들의 발길이 끊이지 않는 명산입니다.
			            </p>
			            <p class="distance">장산콘도와의 거리 : 차량 이용 시 약 10~15분 소요</p>
			        </div>
			    </div>
				<div class="card-row">
			        <div class="card-image">
		                <img src="<c:url value='/img/webp/tour_3.webp'/>" alt="정암사">
			        </div>
			        <div class="card-content">
			            <h2 class="title">정암사</h2>
			            <p class="description">
			                정암사는 신라 시대 자장율사가 부처님의 진신사리를 모시고 창건한 사찰로, 우리나라 5대 적멸보궁 중 하나로 꼽히는 유서 깊은 곳입니다. 경내 산비탈에 세워진 보물 제410호 수마노탑은 정암사를 상징하는 대표적인 문화재이며, 사찰을 감싸고 흐르는 계곡은 천연기념물인 열목어 서식지로 지정되어 있을 만큼 청정한 자연경관을 자랑합니다.
			            </p>
			            <p class="distance">장산콘도와의 거리 : 차량 이용 시 약 20~25분 소요</p>
			        </div>
			    </div>
				<div class="card-row reverse">
			        <div class="card-image">
		                <img src="<c:url value='/img/webp/tour_4.webp'/>" alt="태백산천제단">
			        </div>
			        <div class="card-content">
			            <h2 class="title">태백산 천제단</h2>
			            <p class="description">
							민족의 영산이라 불리는 태백산 정상에 위치한 천제단은 예로부터 하늘에 제사를 지내던 신성한 역사적 명소이자 장엄한 백두대간의 능선이 한눈에 들어오는 최고의 조망터이며, 사계절 수려한 풍경과 특히 겨울철 환상적인 눈꽃 비경을 자랑해 일상의 스트레스를 비우고 청정한 기운을 얻고 가기 좋은 필수 코스입니다.
			            </p>
			            <p class="distance">장산콘도와의 거리 : 차량 이용 시 약 15분 소요</p>
			        </div>
			    </div>
				<div class="card-row">
			        <div class="card-image">
		                <img src="<c:url value='/img/webp/tour_5.webp'/>" alt="칠랑이계곡">
			        </div>
			        <div class="card-content">
			            <h2 class="title">칠랑이계곡</h2>
			            <p class="description">
			                영월 상동읍의 청정 자연 속에 숨겨진 칠랑이계곡은 기암괴석 사이로 옥빛의 맑고 찬 계곡물이 굽이쳐 흐르는 천혜의 힐링 명소이며, 울창한 숲이 천연 그늘을 만들어주어 한여름 무더위를 피하기에 더없이 훌륭한 장소이자 복잡한 도심을 벗어나 온전한 자연의 소리를 들으며 휴식을 취하고 싶은 여행객들에게 최고의 쉼터를 제공합니다.
			            </p>
			            <p class="distance">장산콘도와의 거리 : 차량 이용 시 약 10분 소요</p>
			        </div>
			    </div>
				<div class="card-row reverse">
			        <div class="card-image">
		                <img src="<c:url value='/img/webp/tour_6.webp'/>" alt="태백석탄박물관">
			        </div>
			        <div class="card-content">
			            <h2 class="title">태백석탄박물관</h2>
			            <p class="description">
							태백산 당골계곡 초입에 자리한 태백석탄박물관은 과거 대한민국 산업화를 이끈 석탄 산업의 역사와 광부들의 삶을 생생하게 기록한 국내 최대 규모의 석탄 전문 박물관이며, 모의 갱도 체험 등 다채로운 전시를 통해 아이들에게는 유익한 교육의 기회를, 어른들에게는 아련한 향수를 선사합니다.
			            </p>
			            <p class="distance">장산콘도와의 거리 : 차량 이용 시 약 20분 소요</p>
			        </div>
			    </div>
				<div class="card-row">
			        <div class="card-image">
		                <img src="<c:url value='/img/webp/tour_7.webp'/>" alt="황지연못">
			        </div>
			        <div class="card-content">
			            <h2 class="title">황지연못</h2>
			            <p class="description">
							황지연못은 영남의 젖줄인 낙동강 1,300리의 물길이 시작되는 발원지로, 태백 시내 중심부에 위치하여 시민들과 관광객들에게 편안한 휴식처를 제공하는 의미 깊은 명소입니다. 연못에서는 가뭄에도 마르지 않고 하루 약 5,000톤의 맑은 물이 솟아오르며, 상도(上池)·중도(中池)·하도(下池) 세 개의 연못이 어우러진 신비로운 풍광과 함께 주변에 조성된 공원은 산책하기에 매우 좋습니다.
			            </p>
			            <p class="distance">장산콘도와의 거리 : 차량 이용 시 약 30~35분 소요</p>
			        </div>
			    </div>
				<div class="card-row reverse">
			        <div class="card-image">
		                <img src="<c:url value='/img/webp/tour_8.webp'/>" alt="태백365세이프타운">
			        </div>
			        <div class="card-content">
			            <h2 class="title">태백 365세이프타운</h2>
			            <p class="description">
							국내 최대 규모를 자랑하는 청소년 수련 및 안전 체험 테마파크인 태백 365세이프타운은 산불, 지진, 대테러 등 다양한 재난 상황을 3D·4D 시뮬레이터로 생동감 넘치게 체험하며 대처 능력을 배울 수 있는 곳이며, 다채로운 액티비티 시설과 케이블카까지 갖추고 있어 온 가족이 역동적인 하루를 보내기에 제격입니다.
			            </p>
			            <p class="distance">장산콘도와의 거리 : 차량 이용 시 약 30분 소요</p>
			        </div>
			    </div>
				<div class="card-row">
			        <div class="card-image">
		                <img src="<c:url value='/img/webp/tour_9.webp'/>" alt="삼탄아트마인">
			        </div>
			        <div class="card-content">
			            <h2 class="title">삼탄아트마인</h2>
			            <p class="description">
							실제 폐광된 삼척탄좌 시설을 창조적인 예술 공간으로 재탄생시킨 감성적인 복합문화단지인 삼탄아트마인은 거친 탄광의 흔적과 현대 미술 작품이 묘한 조화를 이루며 독특한 분위기를 자아내는 곳이며, 유명 드라마 촬영지로도 널리 알려져 있어 특별한 인생 사진을 남기고 싶은 여행객들에게 인기가 높습니다.
			            </p>
			            <p class="distance">장산콘도와의 거리 : 차량 이용 시 약 20분 소요</p>
			        </div>
			    </div>
				<div class="card-row reverse">
			        <div class="card-image">
		                <img src="<c:url value='/img/webp/tour_10.webp'/>" alt="하이원워터월드">
			        </div>
			        <div class="card-content">
			            <h2 class="title">하이원 워터월드</h2>
			            <p class="description">
							사계절 내내 역동적인 물놀이를 즐길 수 있는 하이원 워터월드는 거대한 파도풀과 아찔한 슬라이드는 물론 피로를 풀 수 있는 따뜻한 힐링 스파 시설까지 완벽하게 갖춘 대형 테마파크이며, 여름철 시원한 스릴을 즐기려는 젊은 층부터 사계절 내내 안전한 물놀이를 원하는 가족 단위 여행객까지 모두를 만족시키는 최고의 휴양 시설입니다.
			            </p>
			            <p class="distance">장산콘도와의 거리 : 차량 이용 시 약 25분 소요</p>
			        </div>
			    </div>
				<div class="card-row">
			        <div class="card-image">
		                <img src="<c:url value='/img/webp/tour_11.webp'/>" alt="구문소">
			        </div>
			        <div class="card-content">
			            <h2 class="title">구문소</h2>
			            <p class="description">
							천연기념물로 지정된 신비로운 지형인 구문소는 거대한 석문 사이로 강물이 산을 뚫고 지나가는 독특하고 웅장한 자연의 기적을 감상할 수 있는 명소이며, 수억 년의 세월이 새겨진 석회암 암벽과 고생대 화석지층이 잘 보존되어 있어 마치 시간 여행을 떠난 듯한 이색적인 풍경 속에서 멋진 사진을 남길 수 있습니다.
			            </p>
			            <p class="distance">장산콘도와의 거리 : 차량 이용 시 약 30분 소요</p>
			        </div>
			    </div>
				<div class="card-row reverse">
			        <div class="card-image">
		                <img src="<c:url value='/img/webp/tour_12.webp'/>" alt="별마로천문대">
			        </div>
			        <div class="card-content">
			            <h2 class="title">별마로천문대</h2>
			            <p class="description">
							해발 799m의 봉래산 정상에 위치하여 '별을 보는 고요한 정상'이라는 뜻을 가진 별마로천문대는 시민천문대 중 최대 규모의 주망원경을 통해 밤하늘의 신비로운 별자리와 행성을 생생하게 관측할 수 있는 감성 여행지이며, 천문대 주변 활공장에서 내려다보는 영월 시내의 아늑하고 탁 트인 야경이 환상적인 감동을 선사해 연인과 가족들에게 평생 잊지 못할 밤을 선물합니다.
			            </p>
			            <p class="distance">장산콘도와의 거리 : 차량 이용 시 약 50분 소요</p>
			        </div>
			    </div>
			</article>
		</div>
	</main>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</html>