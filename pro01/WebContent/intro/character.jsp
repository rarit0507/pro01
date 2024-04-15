<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" />    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp" %>
<style>
.container { width:1400px; }
.page { clear:both; height:100vh; }
#page1 { background-color:#ececec; height:calc(100vh - 158px); }
#page2 { background-color:#ffffff; }
#page3 { background-color:#ececec; }
#page4 { background-color:#ffffff; }
.page_title { font-size:36px; padding-top:2em; text-align:center; }
th.item1 { width:8%; }
th.item2 { width:60%; }
th.item3 { width:20%; }
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<section class="page" id="page1">
		<div style="width:1400px;margin:15px auto">
			<nav aria-label="breadcrumb" style="text-align:right">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="#">Home</a></li>
			    <li class="breadcrumb-item"><a href="#">지역소개</a></li>
			    <li class="breadcrumb-item active" aria-current="page">지역 특징</li>
			  </ol>
			</nav>
			<hr>
			<div id="tab1">
			<ul class="nav nav-tabs">
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/intro/origin.jsp">지명유래</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link active" href="${path0 }/intro/character.jsp">지역 특징</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/intro/history.jsp">연혁</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/intro/map.jsp">오시는 길</a>
			  </li>
			</ul>
			</div>
			<hr>
			<h3 class="page_title">지역 특징</h3>
			<div class="jumbotron">
				<p>
					서울특별시 노원구에 위치한 지역으로, 주로 주거 지역과 교육 시설이 집중되어 있는 지역이다. 공릉1동과 공릉2동으로 구성되어 있다.
				</p>
				<p><strong>공릉1동</strong><br>
					공릉동의 서쪽에 위치해 있다. 중랑천을 서쪽 경계로 하며, 옛 경춘선 철길을 따라 동일로 부근은 하계동, 
					그 밖의 구간은 공릉2동과 인접하고 있다.
				</p>
				<p>	
					공릉역을 기준으로 북쪽에는 하계동부터 이어져온 아파트 단지(주로 시영아파트)가 많이 위치해 있다.
					반면, 남쪽으로는 일반 주택가와 소규모 아파트 단지가 대다수를 차지하고 있는데, 초창기 공릉동의 모습을 상당수 간직하고 있는 편이다. 
					그리고 공릉역과 태릉입구역 사이에는 동일로부터 옛 경춘선 철길 사이에는 공릉동 도깨비시장이 있다. 최근 전통시장 현대화 작업을 거치면서 상당히 깔끔해진 분위기를 느낄 수 있는 편이다.
				</p>
				<p><strong>공릉2동</strong><br>
					공릉동의 동쪽에 위치해 있다. 옛 경춘선 철길을 따라 공릉1동과 인접하며, 북쪽으로는 서울과학기술대학교부터 불암산을 따라 
					하계동, 중계동, 남양주시 별내동과 닿고 있다. 남쪽으로는 구리시 갈매동과 길게 이어지며, 중랑구 신내동, 묵동과도 경계하고 있다.
				</p>
				<p>	
					 육군사관학교와 연계된 태릉골프장(육사골프장), 자연보호구역인 태강릉, 체육시설인 태릉선수촌, 그리고 불암산이 대다수를 차지하고 있으며 
					 주거지역은 대체로 서쪽인 노원로 일대에 위치한다. 동쪽에는 조선왕릉 중 하나인 태강릉과 조선왕릉전시관이 있다. 
				</p>
				<p>	
					 서울과학기술대학교, 서울여자대학교, 삼육대학교가 이곳에 위치해 있고, 육군사관학교도 화랑로를 경계로 남쪽에 넓게 위치해 있다.
					 의료시설로는 원자력병원이 있다. 2022년 옛 경춘선 철길을 공원화하는 사업의 전부가 완료되어 공릉역부터 갈매동 근처까지 철길 공원이 조성되었다.
				</p>
			</div>
			<div class="">
			</div>
		</div>	
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>