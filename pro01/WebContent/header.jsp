<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="hpath" value="<%=request.getContextPath() %>" />
<header>
	<div class="logo_wrap">
		<a href="/pro01"><img src="${hpath }/images/logo1.png" alt="공릉동 로고" /></a>
	</div>
	<div id="tnb" style="height:100px; line-height:2rem; padding-top:1rem">
		<c:if test="${not empty sid }">
		<h2 style="text-align:center;">${sname } 님 환영합니다.</h2>
		</c:if>
		<c:if test="${empty sid }">
		<h2 style="text-align:center;">서비스 이용 시 로그인 필요</h2>
		</c:if>
	</div>
	<nav id="gnb">
		<ul class="">
			<li class="item">
				<a href="" class="dp1">마이페이지</a>
				<ul class="sub_menu">
					<c:if test="${empty sid }">
					<li><a href="${hpath }/member/login.jsp">로그인</a></li>
					<li><a href="${hpath }/member/term.jsp">회원가입</a></li>
					</c:if>
					<c:if test="${not empty sid }">
					<li><a href="${hpath }/LogOut.do">로그아웃</a></li>
					<li><a href="${hpath }/EditMember.do?id=${sid }">회원정보</a></li>
					</c:if>
					<c:if test="${sid.equals('admin') }">
					<li><a href="${hpath }/AdminMain.do">관리자 페이지</a></li>
					</c:if>
					<li><a href="${hpath }/member/terms.jsp">회원약관</a></li>
					<li><a href="${hpath }/member/policy.jsp">개인정보처리방침</a></li>
				</ul>
			</li>
			<li class="item">
				<a href="" class="dp1">지역소개</a>
				<ul class="sub_menu">
					<li><a href="${hpath }/intro/origin.jsp">지명유래</a></li>
					<li><a href="${hpath }/intro/character.jsp">지역 특징</a></li>
					<li><a href="${hpath }/intro/history.jsp">연혁</a></li>
					<li><a href="${hpath }/intro/map.jsp">오시는 길</a></li>
				</ul>
			</li>
			<li class="item">
				<a href="" class="dp1">이용안내</a>
				<ul class="sub_menu">
					<li><a href="${hpath }/GetTrafficList.do">교통편 안내</a></li>
					<li><a href="${hpath }/district/districtList.jsp">지역시설 안내</a></li>
					<li><a href="${hpath }/cultural/culturalList.jsp">문화시설 안내</a></li>
					<li><a href="${hpath }/GuideList.do">핫플레이스</a></li>
				</ul>
			</li>
			<li class="item">
				<a href="" class="dp1">커뮤니티</a>
				<ul class="sub_menu">
					<li><a href="${hpath }/NotiList.do">공지사항</a></li>
					<li><a href="${hpath }/DataList.do">자료실</a></li>
					<li><a href="${hpath }/GetQnaList.do">QnA</a></li>
				</ul>
			</li>
		</ul>
	</nav>
</header> 
<hr>