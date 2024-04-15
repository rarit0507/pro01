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
			<h3 class="page_title">교통편 등록</h3>
			<form action="${path0 }/TrafficIns.do" method="post">
				<table class="table">
					<tbody>
						<tr>
							<th><label for="ttype">교통편 종류</label></th>
							<td>
								<input type="radio" id="1" name="ttype" value="bus">
								<label for="bus">버스</label><br>
								<input type="radio" id="2" name="ttype" value="subway">
								<label for="subway">지하철</label><br>
							</td>
						</tr>
						<tr>
							<th><label for="no">번호</label></th>
							<td>
								<input type="text" name="no" id="no" class="form-control" maxlength="100" required>
							</td>
						</tr>
						<tr>
							<th><label for="route">노선도</label></th>
							<td>
								<textarea name="route" id="route" rows="4" cols="80" class="form-control"></textarea>
							</td>
						</tr>
						<tr>
							<th><label for="coment">설명</label></th>
							<td>
								<textarea name="coment" id="coment" rows="4" cols="80" class="form-control"></textarea>
							</td>
						</tr>
						<tr>
							<th><label for="uri">uri</label></th>
							<td>
								<textarea name="uri" id="uri" rows="4" cols="80" class="form-control"></textarea>
							</td>
						</tr>
					</tbody>
				</table>
				<hr>
				<div class="btn-group">
				  <button type="submit" class="btn btn-secondary">교통편 등록</button>
				  <a href="${path0 }/GetTrafficList.do" class="btn btn-secondary">교통편 목록</a>
				</div>
			</form>
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