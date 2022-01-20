<%@ page import="item.ItemDAO"%>
<%@ page import="item.ItemDTO"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.sql.Timestamp" %>
<%@ page import="utility.DBManager"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">

 function keyword_check(){

  if(document.search.keyword.value == ''){ //검색어가 없을 경우  

  alert('검색어를 입력하세요'); //경고창 띄움 

  document.search.keyword.focus(); //다시 검색창으로 돌아감 

  return false; 

  }

  else return true;

 }
 
</script>
</head>
<body>

<div id="top_wrap">
	<div id="header_wrap">
		<div id="top_header">
			<h1>
				<a href="main">
					<img width="300px" src="${request.contextPath}resource/img/LOGO.png">
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
						<a href="main?center=itemWriteForm">
							<h2>상품등록</h2>
						</a>
					</li>
					
					<li>
						<a href="main?center=boardMain">
							<h2>우리동네 게시판</h2>
						</a>
					</li>
				</ul>
				
				<div id="category">
					<hr id="top_hr">
					<ul>
						<!-- 보완예정 -->
						<li>
							<a href="main?center=categoryView&code=1">
								디지털기기
							</a>
						</li>
						<li><a href="main?center=categoryView&code=2">생활가전</a></li>
						<li><a href="main?center=categoryView&code=3">남성/여성의류</a></li>
						<li><a href="main?center=categoryView&code=4">가구/인테리어</a></li>
						<li><a href="main?center=categoryView&code=5">스포츠용품</a></li>
						<li><a href="main?center=categoryView&code=6">서적/음반</a></li>
						<li><a href="main?center=categoryView&code=7">기타</a></li>
					</ul>
				</div>
				<div id="search_area">
					<!-- 키워드별 검색옵션 추가도 고려 -->
					<!-- 검색은 일단 문장을 단어로 분해 후 2~3글자 일치 '연속'여부 확인 후 도출형식 -->
					<form action="main?center=search" accept-charset="utf-8" method="post" onsubmit="return keyword_check()">
						<div>
							<p>
								<select class="form-control" name="searchField">
									<option value="search_Title">제목</option>
									<option value="search_Area">지역명</option>
								</select>
							</p>
							<p>
								<input name="keyword" type="text" placeholder="검색어 입력">
							</p>	
                            <p class="btnArea">
                            	<input type="submit" value="search">
                            </p>
						</div>
					</form>
				</div>
				<hr id="top_hr">
			</div>
		</nav>
	</div>
</div>
</body>
</html>