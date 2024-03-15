<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>


<script>
$.ajax({
    url: 'diaryList.do',
    method: 'get',
    dataType: 'json'
  })
  .done(result => {
    result.forEach(member => {
    })
  })
  .fail(err => console.log(err))

</script>
</html>