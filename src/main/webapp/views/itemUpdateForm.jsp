<%@page import="java.util.ArrayList"%>
<%@page import="item.ItemDTO"%>
<%@page import="item.ItemDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/itemUpdateForm.css" type="text/css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/revalidation.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <title>main</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
int code = Integer.parseInt(request.getParameter("code"));
String id = "";

if(session.getAttribute("log") == null){
	request.getRequestDispatcher("main?center=login").forward(request, response);
}
else{
	id=session.getAttribute("log").toString();
}

ItemDAO dao = ItemDAO.getInstance();
ItemDTO item = null;

ArrayList<ItemDTO> list = dao.getItem();

for(int i=0; i<list.size(); i++){
	if(list.get(i).getCode() == code){
		item = list.get(i);
	}
}

%>

	<div class="itemUpdateForm-div">
		<h1>기본정보</h1>
		<hr id="itemUpdateForm-hr1">
		<form method="post" action="service" enctype="multipart/form-data">
			<section id="itemUpdateForm-sec1">
				<h2 id="itemUpdateForm-h2">제&nbsp; 목 </h2>
				<input id="itemUpdateForm-input1" name="title" type="text" value="<%=item.getTitle() %>" required>
			</section>
			<hr id="itemUpdateForm-hr2">
			<section id="itemUpdateForm-sec1">
				<h2 id="itemUpdateForm-h2">이미지 </h2>
				<input id="itemUpdateForm-input1" type="file" accept="image/png, image/gif, image/jpeg" name="image_path" value="<%=item.getImage_path() %>" required>
			</section>
			<hr id="itemUpdateForm-hr2">
			<section id="itemUpdateForm-sec1">
				<h2 id="itemUpdateForm-h2">카테고리 </h2>
				<select id="itemUpdateForm-category" name="category">
					<option value="1">디지털기기</option>
					<option value="2">생활가전</option>
					<option value="3">남성/여성의류</option>
					<option value="4">가구/인테리어</option>
					<option value="5">스포츠용품</option>
					<option value="6">서적/음반</option>
					<option value="7">기타</option>
				</select>
			</section>
			<hr id="itemUpdateForm-hr2">
			<section id="itemUpdateForm-sec1">
				<h2 id="itemUpdateForm-h2">주&nbsp; 소 </h2>
	            <div class="postcode">
					<input type="text" name="postcode" id="sample6_postcode" placeholder="우편번호">
					<input type="button" id="postcodeBtn"onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
				</div>
				<input type="text" name="address" class="required" id="sample6_address" placeholder="주소">
				<input type="text" id="sample6_extraAddress" placeholder="주소">
				<input type="text" name="detailAddress" id="sample6_detailAddress" placeholder="상세주소">
				<input type="hidden" name="section" id="section">
			</section>
			<hr id="itemUpdateForm-hr2">
			<section id="itemUpdateForm-sec1">
				<h2 id="itemUpdateForm-h2">상&nbsp; 태 </h2>
				<input type="radio" name="option1" value="중고상품" checked><span>중고상품</span><br>
				<input type="radio" name="option1" value="새상품"><span>새상품</span><br>
			</section>
			<hr id="itemUpdateForm-hr2">
			<section id="itemUpdateForm-sec1">
				<h2 id="itemUpdateForm-h2">교&nbsp; 환 </h2>
				<input type="radio" name="option2" value="교환불가" checked><span>교환불가</span><br>
				<input type="radio" name="option2" value="교환가능"><span>교환가능</span><br>
			</section>
			<hr id="itemUpdateForm-hr2">
			<section id="itemUpdateForm-sec1">
				<h2 id="itemUpdateForm-h2">가&nbsp; 격 </h2>
				<input id="itemUpdateForm-input1" type="number" name="price" min="0" max="99999999" value="<%=item.getPrice() %>" required>
			</section>
			<hr id="itemUpdateForm-hr2">
			<section id="itemUpdateForm-sec1">
				<h2 id="itemUpdateForm-h2">설&nbsp; 명 </h2>
				<textarea name="content" id="itemUpdateForm-textarea" cols="30" rows="10" value="<%=item.getContent() %>" placeholder="상품에 대한 내용을 입력하세요"></textarea>
			</section>
			<hr id="itemUpdateForm-hr2">
			<section id="itemUpdateForm-sec1">
				<h2 id="itemUpdateForm-h2">수&nbsp; 량 </h2>
				<input type="number" name="num" value="1"min="1" max="999" value="<%=item.getNum() %>" required>
			</section>
			<hr id="itemUpdateForm-hr2">
			<input type="hidden" name="code" value="<%=code %>">
			<input type="hidden" name="command" value="itemUpdateForm">
			<input type="submit" id="itemUpdateForm-btn" value="등록하기">
		</form>
	</div>
</body>
</html>