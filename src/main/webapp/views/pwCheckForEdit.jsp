<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/pwCheckForEdit.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/revalidation.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
String pwCheck = request.getParameter("pwCheck");
if(pwCheck == null){
	pwCheck = "true";
}
%>
    <div class="pwCheckWrap">
        <div class="pwCheck">
            <h2 class="pwCheckTitle">비밀번호 확인</h2>
            <form class="pwInfo" method="post" action="service">
                <div class="pwInfo">
                    <span id="pwText">비밀번호 확인</span>
                    <div class="pwInput">
                        <input type="password" name="pw" id="pwInput">
                        <%if(pwCheck.equals("false")){ %>
                        <span id="pwAlert">비밀번호가 일치하지 않습니다</span>
                        <%} %>
                    </div>
                </div>
                <input type="submit" value="확인" id="pwCheckBtn">
                <input type="hidden" name="command" value="pwCheck">
            </form>
        </div>
    </div>
</body>
</html>