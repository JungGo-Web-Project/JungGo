<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/joinForm.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/revalidation.js"></script>
    <title>Join</title>
</head>
<body>
    <div class="joinWrap">
	    <div class="join">
	        <h2 class="joinForm">회원가입 정보입력</h2>
	        <form method="post" action="service" id="joinForm">
	            <div>
	                <hr color="grey" size="2">
	                <table class="info">
	                    <tr class="info">
	                        <td class="txt"><span>아이디</span></td>
	                        <td class="info">
	                            <input type="text" name="id" class="required" id="id"><br>
	                            <div id="idAlert">
		                            <span id="alert1" class="alert">필수정보입니다</span>
		                            <c:if test="${not empty param.idDup}">
		                            	<span id="checkId" class="alert">중복된 아이디입니다</span>
		                            </c:if>
	                            </div>
	                        </td>
	                    </tr>
	                    <tr class="info">
	                        <td class="txt"><span>비밀번호</span></td>
	                        <td class="info">
	                            <input type="password" name="pw" class="required" id="pw"><br>
	                            <span id="alert2" class="alert">필수정보입니다</span>
	                        </td>
	                    </tr>
	                    <tr class="info">
	                        <td class="txt"><span>비밀번호 확인</span></td>
	                        <td class="info">
	                            <input type="password" name="pwCheck" class="required" id="pwCheck" oninput="checkPw(this)"><br>
	                            <div id="pwAlert">
	                                <span id="alert3" class="alert">필수정보입니다</span>
	                                <span id="checkPw" class="alert">비밀번호가 일치하지 않습니다</span>
	                            </div>
	                        </td>
	                    </tr>
	                    <tr class="info">
	                        <td class="txt"><span>이름</span></td>
	                        <td class="info">
	                            <input type="text" name="name" id="name" class="required"><br>
	                            <span id="alert4" class="alert">필수정보입니다</span>
	                        </td>
	                    </tr>
	                    <tr class="info">
	                        <td class="txt"><span>전화번호</span></td>
	                        <td class="info">
	                            <input type="tel" name="phone" id="phone" class="required"><br>
	                            <span id="alert5" class="alert">필수정보입니다</span>
	                        </td>
	                    </tr>
	                    <tr class="info">
	                        <td class="txt"><span>주소</span></td>
	                        <td class="info">
	                            <input type="text" name="address" id="address" class="required"><br>
	                            <span id="alert6" class="alert">필수정보입니다</span>
	                        </td>
	                    </tr>
	                    <tr class="info">
	                        <td class="info" colspan="2">
	                            <hr color="grey" size="1">
	                            <div class="checkboxes">
	                                <p>
	                                    <input type="checkbox" name="required"><span>&#9;(필수) 이용약관 동의</span><br>
	                                </p>
	                                <p>
	                                    <input type="checkbox" name="required"><span>&#9;(필수) 개인정보 수집 및 이용내역에 대한 동의</span><br>
	                                </p>
	                                <p>
	                                    <input type="checkbox" name="optionAll" onclick="allCheck(form)"><span>&#9;(선택) 마케팅 수신 정보 동의</span><br>
	                                </p>
	                                <div class="option">
	                                    <input type="checkbox" name="option"><span>&#9;이메일</span>
	                                    <input type="checkbox" name="option"><span>&#9;문자</span>
	                                    <input type="checkbox" name="option"><span>&#9;카카오톡</span>
	                                </div>
	                            </div>
	                        </td>
	                    </tr>
	                </table>
	                <hr color="grey" size="2">
	            </div>
	            <div class="btn">
	                <input type="button" value="취소" id="cancel" onclick="location.href='main'">
	                <input type="button" value="회원가입" id="join" onclick="checkJoin(form)">
	            </div>
	            <input type="hidden" name="command" value="join">
	        </form>
	    </div>
    </div>
</body>
</html>