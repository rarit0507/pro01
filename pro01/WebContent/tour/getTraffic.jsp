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
<script src="${path0 }/js/jquery.dataTables.js"></script>
<link rel="stylesheet" href="${path0 }/css/jquery.dataTables.css" >
<style>
.container { width:1400px; }
.page { clear:both; height:100vh; }
#page1 { background-color:#ececec; }
#page2 { background-color:#42bcf5; }
.page_title { font-size:36px; padding-top:2em; text-align:center; }
th.item1 { width:10%; }
th.item2 { width:10%; }
th.item3 { width:10%; }
th.item4 { width:20%; }
th.item5 { width:30%; }
</style>
</head>
<body>
<div id="header">
   <%@ include file="/header.jsp" %>
</div>
<div id="contents">
   <section class="page" id="page1">
      <div style="width:1400px; margin:0 auto;">
         <h3 class="page_title">교통편 상세보기</h3>
         <div>
            <table class="table">
               <thead>
                  <tr>
                     <th class="item1">글번호</th>
                     <th class="item2">종류</th>
                     <th class="item3">번호</th>
                     <th class="item4">노선도</th>
                     <th class="item5">메모</th>
                     <th class="item6">URI</th>
                  </tr>
               </thead>
               <tbody>
                  <c:forEach var="dto" items="${traffic }" varStatus="status">
                     <tr>
                        <td>${dto.tno }</td>
                        <td>${dto.ttype }</td>
                        <td>${dto.no }</td>
                        <td>${dto.route }</td>
                        <td>${dto.coment }</td>
                        <td>${dto.uri }</td>
                     </tr>
                  </c:forEach>
                  <c:if test="${empty tList }">
                     <tr>
                        <td colspan="6"><strong>교통편 데이터가 존재하지 않습니다.</strong></td>
                     </tr>
                  </c:if>
               </tbody>
            </table>
            <script>
            $(document).ready(function(){
               $("#tb1").DataTable({
                  order:[[0,"desc"]]
               });
            });
            </script>
            <hr>
            <div class="btn-group">
              <c:if test="${sid.equals('admin') }">
              <a href="${path0 }/tour/tIns.jsp" class="btn btn-secondary">글 등록</a>
              <a href="${path0 }/EditTraffic.do?no=${traffic.no }" class="btn btn-secondary">글 수정</a>
              <a href="${path0 }/DelTraffic.do?no=${traffic.no }" class="btn btn-secondary">글 삭제</a>
              </c:if>
              <a href="${path0 }/GetTrafficList.do" class="btn btn-secondary">글 목록</a>
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