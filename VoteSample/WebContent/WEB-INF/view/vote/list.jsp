<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>투표 게시판</title>
<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
</head>

<script>
$(document).ready(function(){
	$("#btnWrite").click(function(){
		location.href="vote/write.do";
		});
});
</script>

<body>
<h2>투표 목록</h2>
<button type="button" id="btnWrite">투표작성</button>
<table border="1" width="600px">
  <tr>
    <th>번호</th>
    <th>제목</th>
    <th>상세내용</th>
    <th>작성자</th>
  </tr>
  <c:forEach var="row" items="${list}">
  <tr>
    <td>${row.votenum}</td>
    <td><a href="vote/view.do?votenum=${row.votenum}">${row.title }</a></td>
    <td>${row.subtitle}</td>
    <td>${row.empno }</td>
    </tr>
    </c:forEach>
</table>
</body>
</html>