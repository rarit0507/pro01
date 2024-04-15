<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="fpath" value="<%=request.getContextPath() %>" />
<hr>    
<footer>
	<div class="ft_wrap">
		<nav id="fnb">
			<ul>
				<li><a href="${hpath }/member/terms.jsp">회원약관</a></li>
				<li><a href="${hpath }/member/policy.jsp">개인정보처리방침</a></li>
			</ul>
		</nav>
		<div id="loc">
			<select name="sel" id="sel" onchange="locate()">
				<option value="">동주민센터</option>
				<option value="https://www.nowon.kr/dong/index.do?q_deptCode=1051">공릉1동주민센터</option>
				<option value="https://www.nowon.kr/dong/index.do?q_deptCode=1052">공릉2동주민센터</option>
			</select>
			<select name="sel" id="sel" onchange="locate()">
				<option value="">유관기관</option>
				<option value="https://dietary4u.mfds.go.kr/nowon/">노원 어린이급식관리지원센터</option>
				<option value="http://www.gongreung.or.kr/main/main.html">공릉종합사회복지관</option>
				<option value="https://gov.kr/portal/orgInfo?Mcode=11180">정부/지자체 조직도</option>
			</select>
		</div>
		<script>
		function locate(){
			var sel = document.getElementById("sel");
			if(sel.value!=""){
				window.open(sel.value);
			}
		}
		</script>
		<br><br>
		<div id="copyright">
			<p class="addr">[01689] 서울시 노원구 노해로 437(상계동) 노원구 공릉동 소개</p>
			<p class="addr">TEL 02-2116-3114 (120 다산콜센터로 연결) | 02-2116-3000,3301 (야간,공휴일/당직실)FAX 02-2116-4666</p>
			<p class="copy">COPYRIGHT ⓒ NOWON-GU OFFICE ALL RIGHT RESERVED</p>
		</div>
	</div> 
</footer>