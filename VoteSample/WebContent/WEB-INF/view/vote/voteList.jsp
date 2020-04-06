<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<title>투표 리스트</title>
<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
</head>

<body>
<!-- 
<table id="votelist" width="60%" cellspacing="0">
	<tr>
	<td>투표 번호</td>
	<td>제목</td>
	<td>상세내용</td>
	<td>작성자</td>
	<td>총 참여자</td>
	</tr>
    </table> -->
<c:forEach items="${list }" var="list">
<tr>
<td><c:out value="${list.votenum }"/>
</td>
</c:forEach>    
</body>

</html>