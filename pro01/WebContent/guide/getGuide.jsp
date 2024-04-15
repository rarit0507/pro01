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
#page1 { background-color:#ececec; }
#page2 { background-color:#42bcf5; }
.page_title { font-size:36px; padding-top:2em; text-align:center; }
th.item1 { width:8%; }
th.item2 { width:35%; }
th.item3 { width:20%; }
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<section class="page" id="page1">
		<div style="width:1400px; margin:0 auto;">
			<h3 class="page_title">핫플레이스 상세보기</h3>
			<div>
				<table class="table">
					<tbody>
						<tr>
							<th>장소 번호</th>
							<td>${guide.pcode }</td>
						</tr>
						<tr>
							<th>장소명</th>
							<td>${guide.pname }</td>
						</tr>
						<tr>
							<th>장소 종류</th>
							<td>${guide.ptype }</td>
						</tr>
						<tr>
							<th>주소</th>		
							<td>${guide.paddr }</td>
						</tr>
						<tr>
							<th>연락처</th>
							<td>${guide.ptel }</td>
						</tr>
						<tr>
							<th>장소 설명</th>
							<td>${guide.pcoment }</td>
						</tr>
					</tbody>
				</table>
				<hr>
				<div class="btn-group">
				  <c:if test="${sid.equals('admin') }">
				  <a href="${path0 }/guide/guide_ins.jsp" class="btn btn-secondary">글 등록</a>
				  <a href="${path0 }/EditGuide.do?pcode=${guide.pcode }" class="btn btn-secondary">글 수정</a>
				  <a href="${path0 }/DelGuide.do?pcode=${guide.pcode }" class="btn btn-secondary">글 삭제</a>
				  </c:if>
				  <a href="${path0 }/GuideList.do" class="btn btn-secondary">글 목록</a>
				</div>
			</div>
		</div>
	</section>
	<section class="page" id="page2">
		<div style="width:1400px; margin:0 auto;">	
			<h3 class="page_title"></h3>

		</div>	
	</section>	
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>