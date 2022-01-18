<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/itemUpdateForm.css" type="text/css">
    <title>main</title>
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

	<div class="itemUpdateForm-div">
		<h1>기본정보</h1>
		<hr id="hr1">
		<form method="post" id="itemUpdateForm-sec1" action="service">
			<section id="itemUpdateForm-sec1">
				<h2>제목</h2>
				<input type="text" required>
			</section>
			<hr id="itemUpdateForm-hr2">
			<section id="itemUpdateForm-sec1">
				<h2>카테고리</h2>
				<select>
					<option>디지털기기</option>
					<option>생활가전</option>
					<option>남성/여성의류</option>
					<option>가구/인테리어</option>
					<option>스포츠용품</option>
					<option>서적/음반</option>
					<option>기타</option>
				</select>
			</section>
			<hr id="itemUpdateForm-hr2">
			<section id="itemUpdateForm-sec1">
				<h2>거래지역</h2>
				<button>내 위치</button>
				<input type="text">
			</section>
			<hr id="itemUpdateForm-hr2">
			<section id="itemUpdateForm-sec1">
				<h2>상태</h2>
				<input type="radio" name="상태" value="중고상품" checked><span>중고상품</span><br>
				<input type="radio" name="상태" value="새상품"><span>새상품</span><br>
			</section>
			<hr id="itemUpdateForm-hr2">
			<section id="sec1">
				<h2>교환</h2>
				<input type="radio" name="교환" value="불가" checked><span>교환불가</span><br>
				<input type="radio" name="교환" value="가능"><span>교환가능</span><br>
			</section>
			<hr id="itemUpdateForm-hr2">
			<section id="itemUpdateForm-sec1">
				<h2>가격</h2>
				<input type="number" required>
			</section>
			<hr id="itemUpdateForm-hr2">
			<section id="itemUpdateForm-sec1">
				<h2>설명</h2>
				<textarea name="" id="" cols="30" rows="10"></textarea>
			</section>
			<hr id="itemUpdateForm-hr2">
			<section id="itemUpdateForm-sec1">
				<h2>수량</h2>
				<input type="number" value="1" required>
			</section>
			<hr id="itemUpdateForm-hr2">
			<input type="hidden" name="command" value="">
			<input type="submit" value="등록하기">
		</form>
	</div>
</body>
</html>