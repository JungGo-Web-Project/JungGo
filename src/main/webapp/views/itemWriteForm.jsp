<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
		<h1 id="itemWriteForm-title">기본정보</h1>
		<hr id="itemWriteForm-hr1">
		<form id="itemWriteForm-form" method="post" action="service?command=itemWriteForm" enctype="multipart/form-data">
			<section id="itemWriteForm-sec1">
				<h2 id="itemWriteForm-h2">제&nbsp;목&nbsp;&emsp;&emsp;</h2>
				<input id="itemWriteForm-input1" type="text" name="title" required>
			</section>
			<hr id="itemWriteForm-hr2">
			<section id="itemWriteForm-sec1">
				<h2 id="itemWriteForm-h2">이미지&nbsp;&ensp;&emsp;</h2>
				<input id="itemWriteForm-input1" type="file" accept="image/png, image/gif, image/jpeg" name="image_path" required>
			</section>
			<hr id="itemWriteForm-hr2">
			<section id="itemWriteForm-sec1">
				<h2 id="itemWriteForm-h2">카테고리&emsp;</h2>
				<select id="itemWriteForm-category" name="category">
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
				<h2 id="itemWriteForm-h2">주&nbsp;소&nbsp;&emsp;&emsp;</h2>
	            <div class="postcode">
					<input type="text" name="postcode" id="sample6_postcode" placeholder="우편번호">
					<input type="button" id="postcodeBtn" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
				</div>
				<input type="text" name="address" class="required" id="sample6_address" placeholder="주소">
				<input type="text" id="sample6_extraAddress" placeholder="주소">
				<input type="text" name="detailAddress" id="sample6_detailAddress" placeholder="상세주소">
				<input type="hidden" name="section" id="section">
			</section>
			<hr id="itemWriteForm-hr2">
			<section id="itemWriteForm-sec1">
				<h2 id="itemWriteForm-h2">상&nbsp;태&nbsp;&emsp;&emsp;</h2>
				<input type="radio" name="option1" value="중고상품" checked><span id="itemWriteForm-span">중고상품&emsp;</span><br>
				<input type="radio" name="option1" value="새상품" ><span id="itemWriteForm-span">새상품</span><br>
			</section>
			<hr id="itemWriteForm-hr2">
			<section id="itemWriteForm-sec1">
				<h2 id="itemWriteForm-h2">교&nbsp;환&nbsp;&emsp;&emsp;</h2>
				<input type="radio" name="option2" value="교환불가" checked><span id="itemWriteForm-span">교환불가&emsp;</span><br>
				<input type="radio" name="option2" value="교환가능" ><span id="itemWriteForm-span">교환가능</span><br>
			</section>
			<hr id="itemWriteForm-hr2">
			<section id="itemWriteForm-sec1">
				<h2 id="itemWriteForm-h2">가&nbsp;격&nbsp;&emsp;&emsp;</h2>
				<input id="itemWriteForm-input1" type="number" name="price" min="0" max="99999999" required><span id="itemWriteForm-span">원</span>
			</section>
			<hr id="itemWriteForm-hr2">
			<section id="itemWriteForm-sec1">
				<h2 id="itemWriteForm-h2">설&nbsp;명&nbsp;&emsp;&emsp;</h2>
				<textarea id="itemWriteForm-textarea" name="content" cols="30" rows="10" placeholder="상품에 대한 내용을 입력하세요"></textarea>
			</section>
			<hr id="itemWriteForm-hr2">
			<section id="itemWriteForm-sec1">
				<h2 id="itemWriteForm-h2">수&nbsp;량&nbsp;&emsp;&emsp;</h2>
				<input id="itemWriteForm-input1" type="number" name="num" min="1" max="999" value="1" required><span id="itemWriteForm-span">개</span>
			</section>
			<hr id="itemWriteForm-hr2">
			<input type="hidden" name="sellerId" value="<%=id %>">
			<input type="submit" id="itemWriteForm-btn" value="등록하기">
		</form>
	</div>
</body>
</html>