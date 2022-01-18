<%@page import="user.UserDTO"%>
<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/editPersonalInfo.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/revalidation.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <title>Document</title>
</head>
<body>
	<%
	if(session.getAttribute("log") == null){
		 request.getRequestDispatcher("main?center=login").forward(request, response);
	}
	
	String id = session.getAttribute("log").toString();
	UserDAO dao = UserDAO.getInstane();
	
	UserDTO user = dao.getUserById(id);
	String[] addr = user.getAddress().split(", ");
	%>

    <div class="editInfoWrap">
        <div class="editInfo">
            <h2 class="editInfoTitle">회원정보 수정</h2>
            <form method="post" action="service" id="editInfo">
                <hr color="grey" size="2">
                <table class="info">
                    <tr class="info">
                        <td class="txt"><span>아이디</span></td>
                        <td class="info"><span><%=id %></span></td>
                    </tr>
                    <tr class="info">
                        <td class="txt"><span>비밀번호</span></td>
                        <td class="info"><input type="password" name="pw" class="editInfoInput"></td>
                    </tr>
                    <tr class="info">
                        <td class="txt"><span>비밀번호확인</span></td>
                        <td class="info"><input type="password" name="pwCheck" class="editInfoInput"></td>
                    </tr>
                    <tr class="info">
                        <td class="txt"><span>이름</span></td>
                        <td class="info"><span><%=user.getName() %></span></td>
                    </tr>
                    <tr class="info">
                        <td class="txt"><span>휴대폰</span></td>
                        <td class="info"><input type="tel" class="editInfoInput" name="phone" value="<%=user.getPhone() %>" pattern="[0-9]{11}"></td>
                    </tr>
                    <tr class="info">
                        <td class="txt"><span>주소</span></td>
                        <td class="info" id="address">
                        	<div class="postcode">
								<input type="text" name="postcode" id="sample6_postcode" placeholder="우편번호" value="<%=user.getPostcode()%>">
								<input type="button" id="postcodeBtn"onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
							</div>
							<input type="text" name="address" class="editInfoInput" id="sample6_address" placeholder="주소" value="<%=addr[0]%>">
							<input type="text" name="detailAddress" id="sample6_detailAddress" placeholder="상세주소" value="<%=addr[1]%>">
							<input type="text" id="sample6_extraAddress" placeholder="참고항목" value="<%=user.getSection()%>">
							<input type="hidden" name="section" id="section">
                        </td>
                        
                    </tr>
                </table>
                <hr color="grey" size="2">
                <div class="btn">
                    <input type="button" value="회원탈퇴" id="unregister" onclick="location.href='main?center=deleteAccount'">
                    <input type="button" value="수정하기" id="subBtn" onclick="checkEdit(form)">
                </div>
                <input type="hidden" name="command" value="editInfo">        
            </form>

        </div>
    </div>
</body>
</html>