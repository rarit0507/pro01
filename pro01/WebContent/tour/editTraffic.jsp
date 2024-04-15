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
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<section class="page" id="page1">
		<div style="width:1400px; margin:0 auto;">
			<h3 class="page_title">교통편  수정</h3>
			<form action="${path0 }/EditProTraffic.do" method="post">
				<table class="table">
					<tbody>
						<tr>
							<th><label for="tno">글 번호</label></th>
							<td>
								<input type="text" name="tno" id="tno" class="form-control" maxlength="100" value="${traffic.ttype }" readonly>
							</td>
						</tr>
						<tr>
							<th><label for="ttype">제목</label></th>
							<td>
								<input type="text" name="ttype" id="ttype" class="form-control" maxlength="100" value="${traffic.ttype }" required>
							</td>
						</tr>
						<tr>
							<th><label for="no">번호</label></th>
							<td>
								<input type="text" name="no" id="no" class="form-control" maxlength="100" value="${traffic.no }" required>
							</td>
						</tr>
						<tr>
							<th><label for="route">루트</label></th>
							<td>
								<input type="text" name="route" id="route" class="form-control" maxlength="100" value="${traffic.route}" required>
							</td>
						</tr>
						<tr>
							<th><label for="coment">메모</label></th>
							<td>
								<textarea name="coment" id="coment" rows="8" cols="80" class="form-control">${traffic.coment }</textarea>
							</td>
						</tr>
						<tr>
							<th><label for="uri">URI</label></th>
							<td>
								<input type="text" name="uri" id="uri" class="form-control" maxlength="100" value="${traffic.uri }" required>
							</td>
						</tr>
					</tbody>
				</table>
				<hr>
				<div class="btn-group">
				  <button type="submit" class="btn btn-secondary">글 수정</button>
				  <a href="${path0 }/GetTrafficList.do" class="btn btn-secondary">글 목록</a>
				  <a href="${path0 }/GetTraffic.do?no=${traffic.no } " class="btn btn-secondary">글 상세보기</a>
				</div>
			</form>
		</div>
	</section>	
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>