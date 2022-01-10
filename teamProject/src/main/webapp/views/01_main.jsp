<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="01_main.css">
<title>중고마켓</title>
</head>
<body>
	<div id="wrap">
	<%	
		String center = request.getParameter("center");
		
		// 처음 실행시에는 center값이 넘어오지 않기에
		// null처리 해줌
		if(center == null){	
			center = "04_center.jsp";		// defulat center값을 부여
		}
	%>
	<header>
		<jsp:include page="02_top.jsp" />
	</header>
	<main>
		<jsp:include page="<%= center %>" />
	</main>
	<footer>
		<jsp:include page="03_bottom.jsp" />
	</footer>
	
	<!-- 로그인 여부 추가 -->
	</div>
</body>
</html>