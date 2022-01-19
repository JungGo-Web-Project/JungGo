<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/itemBuy.css" type="text/css">
<title>Insert title here</title>
</head>
<body>
<%
int code = Integer.parseInt(request.getParameter("code"));
String buyerId = request.getParameter("id");
%>
<div class="itemBuy-div">
	<h1>판매확정 하시겠습니까?</h1>
	<form method="post" action="service">
	<input type="hidden" name="code" value="<%=code %>">
	<input type="hidden" name="id" value="<%=buyerId %>">
	<input type="hidden" name="command" value="itemView">
	<input id="itemBuy-btn" type="submit" value="판매완료">
	<input id="itemBuy-btn" type="button" onclick="location.href='main'" value="메인으로">
	</form>
</div>
</body>
</html>