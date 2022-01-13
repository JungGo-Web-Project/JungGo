<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/01_main.css">
<title>중고마켓</title>
</head>
<body>
	<div id="wrap">
	<%	
		String value = request.getParameter("center");
		
		// 처음 실행시에는 center값이 넘어오지 않기에
		// null처리 해줌
		if(value == null){	
			value = "center";		// defulat center값을 부여
		}
		String center = "/" + value;
	%>
	<header>
		<jsp:include page="/top" />
	</header>
	<div id="main_wrap">
		<main>
			<jsp:include page="<%= center %>" />
		</main>
	</div>
	
	<footer>
		<jsp:include page="/bottom" />
	</footer>
	
	<!-- 로그인 여부 추가 -->
	</div>
</body>
</html>