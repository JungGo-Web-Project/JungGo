<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<div id="top_wrap">
	<div id="header_wrap">
		<div id="top_header">
			<h1>
				<a href="main">
					<img src="../resource/img/LOGO.png">
				</a>	
						
			</h1>
			<div id="account">
						<!-- 로그인 여부에 따라 변화 -->
					<ul>
					<%
					boolean log = false;
					if(session.getAttribute("log") != null) log = true;

					
					if(!log){%>
						<li>
							<a href="main?center=login">로그인</a>
						</li>
						<li>
							<a href="main?center=join">회원가입</a>
						</li>
					<%} 
					else{ %>
						<li>
						<a href="service?command=logout">로그아웃</a>
						</li>
					<%} %>
						<li>
						<a href="main?center=myPage">마이페이지</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	<div id=nav_wrap>
		<nav id="nav">
			<div id="nav_inner">
				<ul>
					<li>
						<a href="main?center=itemWriteForm">상품등록</a>
					</li>
					
					<li>
						<a href="main?center=boardMain">우리동네 게시판</a>
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
							<p><input type="text" placeholder="검색어 입력"></p>
                            <p class="btnArea"><button type="submit"><span>검색</span></button></p>
						</div>
					</form>
				</div>
			</div>
		</nav>
	</div>
</div>
</body>
</html>