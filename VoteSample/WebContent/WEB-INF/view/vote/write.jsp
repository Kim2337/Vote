<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>게시글 작성</title>

<script>
  $(document).ready(function(){
	  $("#btnSave").click(function(){
		  var title = $("title").val();
		  var subtitle = $("subtitle").val();
		  if (title==""){
			  alert("제목을 입력하세요");
			  return;
			  }
		  document.form1.submit();
		  });
	  });
</script>

</head>
<body>
<h2>게시글 작성</h2>
<form name="form1" method="post" action="${path }/vote/insert.do">

  <div>
    제목 <input name="title" id="title" size="80" placeholder="제목을 입력하세요"/>
  </div>
  
  <div>
  부제목 <input name="subtitle" id="subtitle" size="80"/>
  </div>
  
 
 <button type="button" id="btnSave">확인</button> 
</form>
</body>
</html>