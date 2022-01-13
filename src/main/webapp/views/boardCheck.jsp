<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/boardCheck.css" type="text/css">
    <title>boardCheck</title>
</head>
<body>
    <div class="boardCheck-div">
    <%
    String id = (String) session.getAttribute("log");
    String code = request.getParameter("code");
    int num = Integer.parseInt(request.getParameter("num"));
    %>
    	<form id="boardCheck-form" method="post" action="service">
    		<input type="hidden" name="command" value="boardCheck">
            <input type="hidden" name="id" value="<%=id %>" >
            <input type="hidden" name="code" value="<%=code %>" >
            <input type="hidden" name="num" value="<%=num %>" >
            <input id="boardCheck-pw" type="password" name="pw" required>
            <input id="boardCheck-submit" type="submit" value="확인">
            <input id="boardCheck-cancle" type="button" onclick="" value="취소">
        </form>
    </div>
</body>
</html>