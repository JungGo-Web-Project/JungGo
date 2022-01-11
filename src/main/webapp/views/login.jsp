<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/login.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/revalidation.js"></script>
<title>login</title>
</head>
<body>
	<h1><a href="main">LOGO</a></h1>
    <div class="wrap">
	    <form method="post" action="service">
            <div>
                <span>아이디&#9;</span>
                <input type="text" name="id" class="info"><br><br>
                <span>비밀번호&#9;</span>
                <input type="password" name="pw" class="info"><br><br>
            </div>
            <div class="btn">
                <input type="button" class="btn" value="로그인" onclick="checkLogin(form)">
                <input type="button" class="btn" value="회원가입" onclick="location.href='join'">
            </div>
            <input type="hidden" name="command" value="login">
        </form>
    </div>
</body>
</html>