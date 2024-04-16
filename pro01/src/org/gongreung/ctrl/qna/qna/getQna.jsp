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
		<div style="width:1400px; margin:0 auto;">
			<nav aria-label="breadcrumb" style="text-align:right">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="#">Home</a></li>
			    <li class="breadcrumb-item"><a href="${path0 }/GetQnaList.do">Qna</a></li>
			    <li class="breadcrumb-item active" aria-current="page">Qna 상세보기</li>
			  </ol>
			</nav>
			<hr>
		</div>
		<div style="width:1400px; margin:0 auto;">
			<h3 class="page_title">Qna 상세보기</h3>
			<div>
				<table class="table">
					<thead><strong>질문</strong></thead>
					<tbody>
						<tr>
							<th>글 번호</th>
							<td>${qnaq.no }</td>
							<th>작성일시</th>
							<td>${qnaq.resdate }</td>
							<th>조회수</th>
							<td>${qnaq.visited }</td>
						</tr>
						<tr>
							<th>글 제목</th>
							<td>${qnaq.title }</td>
						</tr>
						<tr>
							<th>글 내용</th>
							<td>${qnaq.content }</td>
						</tr>
					</tbody>
				</table>
				<hr>
				<div class="btn-group">
				  <c:if test="${(not empty sid) and sid.equals('admin') and qnaq.plevel==1 }">
				  <a href="${path0 }/qna/aIns.jsp?parno=${qnaq.no }" class="btn btn-secondary">답변 등록</a>
				  </c:if>
				  <c:if test="${sid.equals(qnaq.aid) }">
					  <c:if test="${qnaq.plevel==1 }">
					   <a href="${path0 }/EditQna.do?no=${qnaq.no }" class="btn btn-secondary">질문 수정</a>
					   <a href="${path0 }/DelQuestion.do?parno=${qnaq.no }" class="btn btn-secondary">질문 삭제</a>
					  </c:if>
					  <a href="${path0 }/GetQnaList.do" class="btn btn-secondary">Qna 목록</a>
				  </c:if>
				</div>
					<hr>
					<hr>
				<c:if test="${not empty qnaa}">
				    <table class="table">
				        <thead><strong>답변</strong></thead>
				        <tbody>
				            <tr>
				                <th>글 번호</th>
				                <td>${qnaa.no}</td>
				                <th>작성일시</th>
				                <td>${qnaa.resdate}</td>
				            </tr>
				            <tr>
				                <th>글 제목</th>
				                <td>${qnaa.title}</td>
				            </tr>
				            <tr>
				                <th>글 내용</th>
				                <td>${qnaa.content}</td>
				            </tr>
				        </tbody>
				    </table>
				</c:if>
				<c:if test="${empty qnaa }">
				    <strong>아직 답변이 등록되지 않았습니다.</strong>
				</c:if>
				<hr>
				<div class="btn-group">
					  <c:if test="${qnaa.plevel==2 }">
					  <a href="${path0 }/EditQna.do?parno=${qnaa.parno }" class="btn btn-secondary">답변 수정</a>
					  <a href="${path0 }/DelAnswer.do?parno=${qnaa.parno }" class="btn btn-secondary">답변 삭제</a>
					  </c:if>
				  <a href="${path0 }/GetQnaList.do" class="btn btn-secondary">Qna 목록</a>
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