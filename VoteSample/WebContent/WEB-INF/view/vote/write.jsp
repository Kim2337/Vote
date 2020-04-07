<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<title>투표 작성</title>
<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
<script>
  $(document).ready(function(){
	  $("#btnSave").click(function(){
		  var title = $("#title").val();
		  var subtitle = $("#subtitle").val();
		  var content = $("#content").val();
		  if (title==""){
			  alert("제목을 입력하세요");
			  document.form1.title.focus();
			  return;
			  }
		  if(content == ""){
			  alert("내용을 입력하세요");
			  document.form1.content.focus();
			  return;
			  }
		  document.form1.submit();
		  });
	  
	  
	  });
</script>

</head>
<body>
<h2>게시글 작성</h2>
<form name="form1" method="post" action="insert.do">

  <div>
    제목 : <input name="title" id="title" size="80" placeholder="제목을 입력하세요"/>
  </div>

  <div>
  부제목 : <input name="subtitle" id="subtitle" size="80"/>
  </div>
  
  <div>
  투표 내용 <br>
  <input type="text" name="content" id="content" size="100">
  <button type="button" id="btnadd" size="60"> 항목추가 </button>
  </div>
  
  
  
 <button type="button" id="btnSave">확인</button> 
</form>
</body>
</html>