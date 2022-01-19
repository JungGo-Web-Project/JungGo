<%@page import="comment.CommentDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="comment.CommentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/itemComment.css" type="text/css">
<title>Insert title here</title>
</head>
<body>
<%
int code = Integer.parseInt(request.getParameter("code"));	// 상품 코드
String buyerId = request.getParameter("id");				// 구매희망자 아이디
String id = session.getAttribute("log").toString();			// 로그인한 아이디

CommentDAO dao = CommentDAO.getInstance();
ArrayList<CommentDTO> com = dao.userComment(code, buyerId);

%>
<div class="itemComment-div">
		<table id="itemComment-table">
			<tr>
				<td id="itemComment-title" style="width: 4vw">번 호</td>
				<td id="itemComment-title" style="width: 30vw">내 용</td>
				<td id="itemComment-title" style="width: 10vw">작성자</td>
				<td id="itemComment-title" style="width: 15vw">작성일자</td>
			</tr>
			<%
			if(com.size()>0){
				for(int i=0; i<com.size(); i++){
            	%>
            <tr>
                <td><%=i %></td>
                <td><%=com.get(i).getContent() %></td>
                <%
                if(com.get(i).getNum()==1){
                	%><td>판매자</td><%
                }
                else{
                	%><td><%=com.get(i).getBuyerId() %></td><%
                }
                %>
                <td></td>
                <td><%=com.get(i).getDate() %></td>
                <td></td>
            </tr>
            	<%
				}
			}
			%>
		</table>
		<form method="post" action="service">
			<h2>내 용</h2>
			<textarea name="content" id="itemComment-textarea" cols="30" rows="10"></textarea>
			<input type="hidden" name="id" value="<%=buyerId %>">
            <input type="hidden" name="code" value="<%=code %>">
            <input type="hidden" name="command" value="itemComment">
            <%
            if(!buyerId.equals(id)){ // 판매자의 경우
            	%>
            	<input id="" type="button" onclick="location.href='main?center=itemBuy&id=<%=buyerId %>&code=<%=code %>'" value="판매확정">
            	<input type="hidden" name="num" value="1">
            	<%
            }
            else{					// 구매자의 경우
            	%>
            	<input type="hidden" name="num" value="2">
            	<%
            }
            %>
            <input id="itemComment-submit" type="submit" value="입력">
		</form>
	</div>
</body>
</html>