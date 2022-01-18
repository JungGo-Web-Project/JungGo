<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/itemWriteForm.css" type="text/css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/revalidation.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
	<div class="itemWriteForm-div">
		<h1>기본정보</h1>
		<hr id="itemWriteForm-hr1">
		<form method="post" action="service">
			<section id="itemWriteForm-sec1">
				<h2 id="itemWriteForm-h2">제 목</h2>
				<input id="itemWriteForm-input1" type="text" name="title" required>
			</section>
			<section id="itemWriteForm-sec1">
				<h2 id="itemWriteForm-h2">이미지</h2>
				<input id="itemWriteForm-input1" type="text" name="image_path" required>
			</section>
			<hr id="itemWriteForm-hr2">
			<section id="itemWriteForm-sec1">
				<h2 id="itemWriteForm-h2">카테고리</h2>
				<select name="category">
					<option value="1">디지털기기</option>
					<option value="2">생활가전</option>
					<option value="3">남성/여성의류</option>
					<option value="4">가구/인테리어</option>
					<option value="5">스포츠용품</option>
					<option value="6">서적/음반</option>
					<option value="7">기타</option>
				</select>
			</section>
			<hr id="itemWriteForm-hr2">
			<section id="itemWriteForm-sec1">
				<h2 id="itemWriteForm-h2">주 소</h2>
	            <div class="postcode">
					<input type="text" name="postcode" id="sample6_postcode" placeholder="우편번호">
					<input type="button" id="postcodeBtn"onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
				</div>
				<input type="text" name="address" class="required" id="sample6_address" placeholder="주소">
				<input type="text" name="detailAddress" id="sample6_detailAddress" placeholder="상세주소">
				<input type="text" id="sample6_extraAddress" placeholder="참고항목">
				<input type="hidden" name="section" id="section">
			</section>
			<hr id="itemWriteForm-hr2">
			<section id="itemWriteForm-sec1">
				<h2 id="itemWriteForm-h2">상 태</h2>
				<input type="radio" name="status1" checked><span>중고상품</span><br>
				<input type="radio" name="status2" ><span>새상품</span><br>
			</section>
			<hr id="itemWriteForm-hr2">
			<section id="itemWriteForm-sec1">
				<h2 id="itemWriteForm-h2">교 환</h2>
				<input type="radio" name="change1" checked><span>교환불가</span><br>
				<input type="radio" name="change2" ><span>교환가능</span><br>
			</section>
			<hr id="itemWriteForm-hr2">
			<section id="itemWriteForm-sec1">
				<h2 id="itemWriteForm-h2">가 격</h2>
				<input id="itemWriteForm-input1" type="number" name="price" min="0" max="99999999" required>
			</section>
			<hr id="itemWriteForm-hr2">
			<section id="sec1">
				<h2 id="itemWriteForm-h2">설 명</h2>
				<textarea name="content" cols="30" rows="10"></textarea>
			</section>
			<hr id="itemWriteForm-hr2">
			<section id="itemWriteForm-sec1">
				<h2 id="itemWriteForm-h2">수 량</h2>
				<input id="itemWriteForm-input1" type="number" name="num" min="1" max="999" value="1" required>
			</section>
			<hr id="itemWriteForm-hr2">
			<input type="hidden" name="command" value="itemWriteForm">
			<input type="hidden" name="sellerId" value="<%=id %>">
			<input type="submit" value="등록하기">
		</form>
	</div>
</body>
</html>