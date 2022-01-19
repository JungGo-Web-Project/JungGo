<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/itemDeleteForm.css" type="text/css">
<title>Insert title here</title>
</head>
<body>
<%
int code = Integer.parseInt(request.getParameter("code"));

%>
<div class="itemDeleteForm-div">
	<h2>삭제 하시겠습니까?</h2>
	<form method="post" action="service">
	<input type="hidden" name="command" value="itemDeleteForm">
	<input type="hidden" name="code" value="<%=code %>">
	<input id="itemDeleteForm-btn" type="submit" value="삭제완료">
	</form>
	<input id="itemDeleteForm-btn" type="button" onclick="location.href='main'" value="메인으로">
</div>
</body>
</html>