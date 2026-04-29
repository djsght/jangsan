<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>장산콘도 > 부대시설 > 레스토랑</title>
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
		                <img src="<c:url value='/img/webp/tour_4.webp'/>" alt="만항재">
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
		                <img src="<c:url value='/img/webp/tour_1.webp'/>" alt="황지연못">
			        </div>
			        <div class="card-content">
			            <h2 class="title">황지연못</h2>
			            <p class="description">
							황지연못은 영남의 젖줄인 낙동강 1,300리의 물길이 시작되는 발원지로, 태백 시내 중심부에 위치하여 시민들과 관광객들에게 편안한 휴식처를 제공하는 의미 깊은 명소입니다. 연못에서는 가뭄에도 마르지 않고 하루 약 5,000톤의 맑은 물이 솟아오르며, 상도(上池)·중도(中池)·하도(下池) 세 개의 연못이 어우러진 신비로운 풍광과 함께 주변에 조성된 공원은 산책하기에 매우 좋습니다.
			            </p>
			            <p class="distance">장산콘도와의 거리 : 차량 이용 시 약 30~35분 소요</p>
			        </div>
			    </div>
				<div class="card-row">
			        <div class="card-image">
		                <img src="<c:url value='/img/webp/tour_5.webp'/>" alt="검룡소">
			        </div>
			        <div class="card-content">
			            <h2 class="title">검룡소</h2>
			            <p class="description">
							검룡소는 한강 514km의 물길이 시작되는 신비로운 발원지로, 사계절 내내 9℃의 차가운 물이 하루 약 2,000톤씩 솟아오르는 자연의 경이로움을 간직한 곳입니다. 석회암반을 뚫고 솟아나온 물이 구불구불한 암반을 타고 흐르는 모습이 마치 용이 몸부림치는 것 같다고 하여 '검룡소'라는 이름이 붙었으며, 주변의 울창한 숲과 이끼 낀 바위들이 어우러져 태고의 신비를 더합니다.
			            </p>
			            <p class="distance">장산콘도와의 거리 : 차량 이용 시 약 45~50분 소요</p>
			        </div>
			    </div>
			</article>
		</div>
	</main>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</html>