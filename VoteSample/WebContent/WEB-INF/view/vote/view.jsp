<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>투표 작성</title>

<script type="text/javascript">
  $(document).ready(function(){
	  $("#btnUpdate").click(function(){
		  var title = $("#title").val();
		  var subtitle = $("#subtitle").val();
		  var empno = $("#empno").val();
		  if(title == ""){
			  alert("제목을 입력하세요");
			  document.form1.title.focus();
			  return;
			  }
		  document.form1.action="${path}/vote/update.do"
			  document.form1.submit();
		  });
  });

</script>

</head>
<body>
<h2>투표 현황</h2>
<form name="form1" method="post">
<div>제목 
 <input name="title" id="title" size="80" value="${dto.title }"/>
</div>

<div>부제목 
 <input name="subtitle" id="subtitle" size="80" value="${dto.subtitle }"/>
</div>

</form>

</body>
</html>