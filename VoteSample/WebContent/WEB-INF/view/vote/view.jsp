<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>투표 현황</title>
</head>

<script>
$(document).ready(function(){
	$("#btnVote").click(function(){
		location.href="vote/voteform.do";
		});
});
</script>

<body>
<h2>투표 현황</h2>
<table border="1" width="400">
 <tr>
   <td colspan="4"> 
   <b> Q : ${dto.title}</b><br>
   <b> ${dto.subtitle}</b></td>
 </tr>
 <tr>
 <td >
   <b>${dto.content }</b><br>
 </td>
 </tr>
</table>

<button type="button" id="btnVote">투표하기</button>
</body>
</html>