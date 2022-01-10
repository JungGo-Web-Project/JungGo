<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="02_top.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="top_wrap">
	<div id="top_header">
	<h1>
		<a href="01_main.jsp?center=04_center.jsp">중고마켓</a>
		
	</h1>
	<div id="account">
				<!-- 로그인 여부에 따라 변화 -->
			<ul>
				<li>
					<a href="01_main.jsp?center=login.jsp">로그인</a>
				</li>
				<li>
					<a href="01_main.jsp?center=join.jsp">회원가입</a>
				</li>
				<li>
				<a href="01_main.jsp?center=mypage.jsp">마이페이지</a>
				</li>
			</ul>
		</div>
	</div>
	<nav>
		
			
			<ul>
				<li>
					<a href="01_main.jsp?center=itemUpdateForm.jsp">상품등록</a>
				</li>
				
				<li>
					<a href="01_main.jsp?center=boardMain.jsp">우리동네 게시판</a>
				</li>
			</ul>
			
			<div id="category">
				<ul>
					<!-- 보완예정 -->
					<li><a href="01_main.jsp?center=">남성의류</a></li>
					<li><a href="01_main.jsp?center=">여성의류</a></li>
					<li><a href="01_main.jsp?center=">생활가전</a></li>
					<li><a href="01_main.jsp?center=">운동/스포츠</a></li>
				</ul>
			</div>
			<div id="search_area">
			<!-- 키워드별 검색옵션 추가도 고려 -->
			<!-- 검색은 일단 문장을 단어로 분해 후 2~3글자 일치 '연속'여부 확인 후 도출형식 -->
			<form action="search.jsp" method="post">
				<div>
					<input type="text" placeholder="검색어 입력">
				</div>
				<button type="submit">
					<span>검색</span>
				</button>
			</form>
		</div>
		</nav>
</div>
</body>
</html>