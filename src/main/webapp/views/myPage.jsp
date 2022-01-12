<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/myPage.css">
<title>myPage</title>
</head>
<body>
 <%
 String id="";
 
 if(session.getAttribute("log") == null){
	 request.getRequestDispatcher("main?center=login").forward(request, response);
 }
 else{
	 id = session.getAttribute("log").toString();
 }
 %>
 	<div class="myPageWrap">
	    <div class="myPage">
	        <div class="myPageTitle">
                <span id="myPageTitle">마이페이지</span>
            </div>
	        <div class="profile">
	            <hr color="grey" size="2">
	            <div class="profileInfo">
	                <img src="https://www.pngall.com/wp-content/uploads/5/Profile-PNG-File.png" id="profileImage">
	                <span id="profileId"><%=id %>님</span>
	            </div>
	            <hr color="grey" size="2">
	        </div>
	        <div class="myPageMenu">
	            <button class="myPageMenu" onclick="location.href='main?center=editPersonalInfo'">정보수정</button>
	            <button class="myPageMenu" onclick="location.href='main?center=myBoard'">작성한 글</button>
	            <button class="myPageMenu">댓글 쓴 글</button>
	        </div>
	    </div>
 	</div>
</body>
</html>