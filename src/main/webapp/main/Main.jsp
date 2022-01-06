<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중고마켓</title>
</head>
<body>
	<h1>
		<a href="main.jsp">중고마켓</a>
	</h1>
	<form action="search.jsp" method="post">
		<div>
			<input type="text" placeholder="검색어 입력">
		</div>
		<button type="submit">
			<span>검색</span>
		</button>
	</form>
	<ul>
		<li>
			<a href="login.jsp">로그인</a>
		</li>
		<li>
			<a href="join.jsp">회원가입</a>
		</li>
		<li>
			<a href="sell_write.jsp">상품등록</a>
		</li>
		<li>
			<a href="mypage.jsp">마이페이지</a>
		</li>
		<li>
			<a href="board.jsp">우리동네 게시판</a>
		</li>
	</ul>
	<div>
		<ul>
			<!-- 보완예정 -->
			카테고리
			<li><a href="">남성의류</a></li>
			<li><a href="">여성의류</a></li>
			<li><a href="">전자제품</a></li>
			<li><a href="">운동/스포츠</a></li>
		</ul>
	</div>
</body>
</html>