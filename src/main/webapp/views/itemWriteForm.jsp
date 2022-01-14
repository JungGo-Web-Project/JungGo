<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

String id = "";

if(session.getAttribute("log") == null){
	request.getRequestDispatcher("main?center=login").forward(request, response);
}
else{
	id=session.getAttribute("log").toString();
}

%>
	<div>
		<h1>기본정보</h1>
		<hr id="hr1">
		<form method="post" action="service">
			<section id="sec1">
				<h2>제목</h2>
				<input type="text" name="title" required>
			</section>
			<hr id="hr2">
			<section id="sec1">
				<h2>카테고리</h2>
				<select name="category">
					<option>디지털기기</option>
					<option>생활가전</option>
					<option>남성/여성의류</option>
					<option>가구/인테리어</option>
					<option>스포츠용품</option>
					<option>서적/음반</option>
					<option>기타</option>
				</select>
			</section>
			<hr id="hr2">
			<section id="sec1">
				<h2>거래지역</h2>
				<input type="text" name="address" required>
			</section>
			<hr id="hr2">
			<section id="sec1">
				<h2>상태</h2>
				<input type="radio" name="status1" checked><span>중고상품</span><br>
				<input type="radio" name="status2" ><span>새상품</span><br>
			</section>
			<hr id="hr2">
			<section id="sec1">
				<h2>교환</h2>
				<input type="radio" name="change1" checked><span>교환불가</span><br>
				<input type="radio" name="change2" ><span>교환가능</span><br>
			</section>
			<hr id="hr2">
			<section id="sec1">
				<h2>가격</h2>
				<input type="number" name="price" min="0" max="99999999" required>
			</section>
			<hr id="hr2">
			<section id="sec1">
				<h2>설명</h2>
				<textarea name="content" cols="30" rows="10"></textarea>
			</section>
			<hr id="hr2">
			<section id="sec1">
				<h2>수량</h2>
				<input type="number" name="num" min="1" max="999" value="1" required>
			</section>
			<hr id="hr2">
			<input type="hidden" name="command" value="itemWriteForm">
			<input type="hidden" name="sellerId" value="<%=id %>">
			<input type="submit" value="등록하기">
		</form>
	</div>
</body>
</html>