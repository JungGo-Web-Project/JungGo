<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/pwCheckForEdit.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/revalidation.js"></script>
<title>Insert title here</title>
</head>
<body>
    <div class="pwCheckWrap">
        <div class="pwCheck">
            <h2 class="pwCheckTitle">비밀번호 확인</h2>
            <form class="pwInfo" method="post" action="service">
                <div class="pwInfo">
                    <span id="pwText">비밀번호 확인</span>
                    <div class="pwInput">
                        <input type="password" name="pw" id="pwInput">
                        <c:if test="${not empty param.pwCheck}">
        	                <span id="pwAlert">비밀번호가 일치하지 않습니다</span>
                        </c:if>
                    </div>
                </div>
                <input type="submit" value="확인" id="pwCheckBtn">
                <input type="hidden" name="command" value="pwCheck">
            </form>
        </div>
    </div>
</body>
</html>