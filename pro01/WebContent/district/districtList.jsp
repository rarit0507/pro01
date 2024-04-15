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
			    <li class="breadcrumb-item"><a href="#">이용안내</a></li>
			    <li class="breadcrumb-item active" aria-current="page">지역시설 안내</li>
			  </ol>
			</nav>
			<hr>
			<div id="tab1">
			<ul class="nav nav-tabs">
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/GetTrafficList.do">교통편 안내</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link active" href="${path0 }/district/districtList.jsp">지역시설 안내</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/cultural/culturalList.jsp">문화시설 안내</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/GuideList.do">핫플레이스</a>
			  </li>
			</ul>
			</div>
			<hr>
			<h3 class="page_title">1. 공릉청소년문화센터</h3>
			<div class="jumbotron">
				<p>
					서울특별시 노원구에 위치한 지역으로, 주로 주거 지역과 교육 시설이 집중되어 있는 지역이다. 공릉1동과 공릉2동으로 구성되어 있다.
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