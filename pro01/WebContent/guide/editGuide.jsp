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
			<h3 class="page_title">핫플레이스 수정</h3>
			<form action="${path0 }/EditProGuide.do" method="post">
				<table class="table">
					<tbody>
						<tr>
							<th><label for="pcode">글 번호</label></th>
							<td>
								<input type="text" name="pcode" id="pcode" class="form-control" maxlength="100" value="${guide.pcode }" readonly>
							</td>
						</tr>
						<tr>
							<th><label for="pname">장소명</label></th>
							<td>
								<input type="text" name="pname" id="pname" class="form-control" maxlength="100" value="${guide.pname }" required>
							</td>
						</tr>
						<tr>
							<th><label for="ptype">장소종류</label></th>
							<td>
								<input type="text" name="ptype" id="ptype" class="form-control" maxlength="100" value="${guide.ptype }" required>
							</td>
						</tr>
						<tr>
							<th><label for="paddr">주소</label></th>
							<td>
								<input type="text" name="paddr" id="paddr" class="form-control" maxlength="100" value="${guide.paddr }" required>
							</td>
						</tr>
						<tr>
							<th><label for="ptel">연락처</label></th>
							<td>
								<input type="text" name="paddr" id="paddr" class="form-control" maxlength="100" value="${guide.ptel }" required>
							</td>
						</tr>
						<tr>
							<th><label for="content">장소 설명</label></th>
							<td>
								<textarea name="pcoment" id="pcoment" rows="8" cols="80" class="form-control">${guide.pcoment }</textarea>
							</td>
						</tr>
					</tbody>
				</table>
				<hr>
				<div class="btn-group">
				  <button type="submit" class="btn btn-secondary">글 수정</button>
				  <a href="${path0 }/GuideList.do" class="btn btn-secondary">글 목록</a>
				  <a href="${path0 }/GetGuide.do?pcode=${guide.pcode} " class="btn btn-secondary">글 상세보기</a>
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