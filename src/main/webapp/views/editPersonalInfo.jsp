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
    <script type="text/javascript" src="revalidation.js"></script>
    <title>Document</title>
</head>
<body>
	<%
	String id = session.getAttribute("log").toString();
	UserDAO dao = UserDAO.getInstane();
	
	UserDTO user = dao.getUserById(id); 
	%>

    <h2>회원정보 수정</h2>
    <form method="post" action="service">
        <table class="info">
            <tr>
                <td><span>아이디</span></td>
                <td><span><%=id %></span></td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td><input type="password" name="pw"></td>
            </tr>
            <tr>
                <td>비밀번호확인</td>
                <td><input type="password" name="pwCheck"></td>
            </tr>
            <tr>
                <td><span>이름</span></td>
                <td><span><%=user.getName() %></span></td>
            </tr>
            <tr>
                <td><span>휴대폰</span></td>
                <td><input type="tel" name="phone" value="<%=user.getPhone() %>" pattern="[0-9]{11}"></td>
            </tr>
            <tr>
                <td>주소</td>
                <td><input type="text" name="address" value="<%=user.getAddress()%>"></td>
            </tr>
        </table>
        <input type="submit" value="수정하기">
        <input type="hidden" name="command" value="editInfo">
        
    </form>
</body>
</html>