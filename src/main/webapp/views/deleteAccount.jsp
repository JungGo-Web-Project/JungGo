<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/deleteAccount.css">
<title>Insert title here</title>
</head>
<body>
    <div class="unregisterWrap">
        <div class="unregister">
            <h1 class="unregisterTitle">회원 탈퇴</h1>
            <span id="text1">탈퇴하신 후 계정 복구가 불가합니다</span>
            <span id="text2">정말 탈퇴 하시겠습니까?</span>
            <form method="post" class="unregisterBtn" action=service>
	            <input type="hidden" name="command" value="deleteAccount">
                <input type="submit" class="unregisterBtn" id="yes" value="예">
                <input type="button" class="unregisterBtn" id="no" value="아니오" onclick="location.href='main'">
            </form>
        </div>
    </div>
</body>
</html>