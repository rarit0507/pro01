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
.loadmap { clear:both; }
.loadmap ul { list-style:none; padding:0; margin:0; clear:both; width:100%;
height:200px; }
.loadmap ul li { float:left; width:20%; padding:0px; margin:0px; }
.loadmap ul li .circle { clear:both; width:80px; height:80px; line-height:80px;
font-weight:700; background-color:#ff2965;
border-radius:45px; text-align:center; color:#fff; }
.loadmap ul li .his { padding:10px; }
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
			    <li class="breadcrumb-item active" aria-current="page">연혁</li>
			  </ol>
			</nav>
			<hr>
			<div id="tab1">
			<ul class="nav nav-tabs">
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/intro/origin.jsp">지명유래</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/intro/character.jsp">지역 특징</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link active" href="${path0 }/intro/history.jsp">연혁</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/intro/map.jsp">오시는 길</a>
			  </li>
			</ul>
			</div>
			<hr>
			<h3 class="page_title">연혁</h3>
			<div class="jumbotron" style="padding:1rem;">
				<p>
					<span>경기도 양주군 노해면 공덕리</span> <i class="fas fa-arrow-circle-right fa-fw"></i> 
					<span>서울특별시 성북구 노해출장소(공릉동)</span> <i class="fas fa-arrow-circle-right fa-fw"></i> 
					<span>서울특별시 도봉구 공릉동</span> <i class="fas fa-arrow-circle-right fa-fw"></i>
					<span>서울특별시 노원구 공릉동(3개 동)</span> <i class="fas fa-arrow-circle-right fa-fw"></i>
					<span>서울특별시 노원구 공릉동(2개 동)</span>
				</p>
			</div>
			<div class="loadmap">
				<ul>
					<li>
						<div class="his">1. 경기도 양주군 노해면(노원면+해등촌면) 공덕리 : 2개 면을 통합하고 1개 리로 통일함</div>
						<div class="circle">1914</div>
					</li>
					<li>
						<div class="his">1. 서울특별시 성북구 노해출장소(공릉동) : 서울특별시로 편입됨<br>
						</div>
						<div class="circle">1963</div>
					</li>
					<li>
						<div class="his">1. 서울특별시 도봉구 공릉동 : 도봉구 신설 후 도봉구로 편입됨</div>
						<div class="circle">1973</div>
					</li>
					<li>
						<div class="his">1. 서울특별시 노원구 공릉동(3개 동) : 노원구 신설 후 노원구로 편입됨</div>
						<div class="circle">1988</div>
					</li>
					<li>
						<div class="his">1. 서울특별시 노원구 공릉동(2개 동) : 공릉3동을 폐지하여 3개 동을 2개 동으로 통합</div>
						<div class="circle">2008</div>
					</li>
				</ul>
			</div>
		</div>	
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>