<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../resource/css/boardCheck.css" type="text/css">
    <title>boardCheck</title>
</head>
<body>
    <div class="boardCheck-div">
    <%
    int code = Integer.parseInt(request.getParameter("code"));
    if(code == 1){ // 수정시에 id, pw 체크
    	%><form id="boardCheck-form" method="post" action="boardUpdate"><%
    }
    else{ // 삭제시에 id, pw 체크
    	%><form id="boardCheck-form" method="post" action="boardDelete"><%
    }
    %>
            <input type="hidden" name="id" value="" >
            <input type="hidden" name="code" value="" >
            <input id="boardCheck-pw" type="password" name="pw">
            <input id="boardCheck-submit" type="submit" value="확인">
        </form>
    </div>
</body>
</html>