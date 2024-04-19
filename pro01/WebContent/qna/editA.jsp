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
			<nav aria-label="breadcrumb" style="text-align:right">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="#">Home</a></li>
			    <li class="breadcrumb-item"><a href="${path0 }/GetQnaList.do">Qna</a></li>
			    <li class="breadcrumb-item active" aria-current="page">답변 수정</li>
			  </ol>
			</nav>
			<hr>
		</div>
		<div style="width:1400px; margin:0 auto;">
			<c:if test="${qna.plevel==2 }">
			<h3 class="page_title">답변 수정</h3>
			</c:if>
			<form action="${path0 }/EditProQ.do" method="post">
				<table class="table">
					<tbody>
						<tr>
							<th><label for="title">제목</label></th>
							<td>
								<!-- <input type="hidden" name="no" id="no" value="${qna.no }"> -->
								<input type="hidden" name="parno" id="no" value="${qnaa.parno }">
								<input type="text" name="title" id="title" class="form-control" maxlength="100" value="${qnaa.title }" required>
							</td>
						</tr>
						<tr>
							<th><label for="content">내용</label></th>
							<td>
								<textarea name="content" id="content" rows="8" cols="80" class="form-control">${qnaa.content }</textarea>
							</td>
						</tr>
						<tr>
							<th><label for="resdate">작성일시</label></th>
							<td>
								<input type="text" name="resdate" id="resdate" class="form-control" value="${qnaa.resdate }" disabled>
							</td>
						</tr>
						<tr>
							<th><label for="visited">읽은횟수</label></th>
							<td>
								<input type="text" name="visited" id="visited" class="form-control" value="${qnaa.visited }" disabled>
							</td>
						</tr>
					</tbody>
				</table>
				<hr>
				<div class="btn-group">
				  <button type="submit" class="btn btn-secondary">답변 수정</button>
				  <a href="${path0 }/GetQnaList.do" class="btn btn-secondary">Qna 목록</a>
				  <a href="${path0 }/GetQna.do?no=${qnaq.no} " class="btn btn-secondary">Qna 상세보기</a>
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