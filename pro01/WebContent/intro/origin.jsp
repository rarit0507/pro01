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
.page { clear:both; min-height:100vh; margin:0; padding:0; }
#page1 { background-color:#ececec; min-height:calc(100vh - 158px); }
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
			<nav aria-label="breadcrumb d-flex justify-content-between">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="#">Home</a></li>
			    <li class="breadcrumb-item"><a href="#">지역소개</a></li>
			    <li class="breadcrumb-item active" aria-current="page">지명유래</li>
			  </ol>
			</nav>
			<hr>
			<div id="tab1">
			<ul class="nav nav-tabs">
			  <li class="nav-item">
			    <a class="nav-link active" href="${path0 }/intro/origin.jsp">지명유래</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/intro/character.jsp">지역 특징</a>
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
			<h3 class="page_title">지명 유래</h3>
			<div class="jumbotron">
				<p>
					공릉의 지명에 대해서는 다음의 대표적인 유래가 있다.<br> 
					<strong>1. 공릉의 존재</strong> : 공릉동의 이름은 "공릉(恭陵)"에서 유래하였다. 
					조선 시대에 공릉은 조선 제7대 임금인 세조(재위 1455~1468)의 부인인 정희왕후(貞熹王后) 윤씨의 능(능묘)이다. 
					이 능묘는 현재 경기도 남양주시에 위치해 있으며, 조선 시대에는 현재의 공릉동 지역까지 공릉의 영역에 포함되어 있었다.<br>
				</p>
				<p>
					<strong>2. 마을 이름에서의 유래</strong> : 공릉1동의 가장 큰 마을인 공덕리(孔德里)와 공릉2동의 옛 명칭인 능골에서 한 글자씩을 따서 만들어졌다는 설이 있다.
				</p>
			</div>
			<br>
		</div>	
	</section>
	<section class="page" id="page1">
		<div style="width:1400px;margin:15px auto">
			<h3 class="page_title">행정구역 및 인구 현황</h3>
			<div class="">
				<table class="table">
					<thead>
						<tr>
							<th>행정동</th><th>인구</th>
							<th>면적</th><th>법정동</th>
							<th>통수</th><th>반수</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>공릉1동</td><td>36,422 명</td>
							<td>1.41㎢</td><td>공릉동</td>
							<td>50통</td><td>408반</td>
						</tr>
						<tr>
							<td>공릉2동</td><td>공릉2동</td>
							<td>6.82㎢</td><td>공릉동</td>
							<td>44통</td><td>389반</td>
						</tr>
					</tbody>
				</table>
			</div>
			<figure class="map_data">
				<img src="${path0 }/images/gongreung.png" alt="노원구 지도">
			</figure>	
		</div>
	</section>	
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>