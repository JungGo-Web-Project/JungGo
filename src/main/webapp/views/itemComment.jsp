<%@page import="item.ItemDTO"%>
<%@page import="item.ItemDAO"%>
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
ArrayList<CommentDTO> temp = dao.getComment();
ArrayList<CommentDTO> com = new ArrayList<CommentDTO>();

for(int i=0; i<temp.size(); i++){
	if(code == temp.get(i).getItemCode() && buyerId.equals(temp.get(i).getBuyerId())){
		com.add(temp.get(i));
	}
}

ItemDAO itemdao = ItemDAO.getInstance();
ItemDTO item = null;

ArrayList<ItemDTO> list = itemdao.getItem();

for(int i=0; i<list.size(); i++){
	if(list.get(i).getCode() == code){
		item = list.get(i);
	}
}

%>
<div class="itemComment-div">
        <section id="itemComment-sec">
            <img id="itemComment-img" src="${request.contextPath}upload/<%=item.getImage_path() %>" width="300px" height="300">
            <table id="itemComment-table1">
                <tr>
                    <th><h1 id="itemComment-h1"><%=item.getTitle() %></h1></th>
                </tr>
                <tr>
                    <td>
                        <h2 id="itemComment-h2"><%=item.getPrice() %></h2>
                        <hr id="itemComment-hr">
                    </td>
                </tr>
                <tr>
                    <td><h3 id="itemComment-h3">ㆍ조회수&nbsp;&nbsp; <%=item.getView()+1 %>회</h3></td>
                </tr>
                <tr>
                    <td><h3 id="itemComment-h3">ㆍ상품상태 <%=item.getOption1() %></h3></td>
                </tr>
                <tr>
                    <td><h3 id="itemComment-h3">ㆍ교환여부 <%=item.getOption2() %></h3></td>
                </tr>
                <tr>
                    <td><h3 id="itemComment-h3">ㆍ거래지역 <%=item.getAddress() %></h3></td>
                </tr>
                <tr>
                    <td><h3 id="itemComment-h3">ㆍ<%=item.getStatus() %></h3></td>
                </tr>
            </table>
        </section>
		
		<table id="itemComment-table2" border="1">
			<tr>
				<th id="itemComment-title" style="width: 4vw">번 호</th>
				<th id="itemComment-title" style="width: 30vw">내 용</th>
				<th id="itemComment-title" style="width: 10vw">작성자</th>
				<th id="itemComment-title" style="width: 15vw">작성일자</th>
			</tr>
			<%
			if(com.size()>0){
				for(int i=0; i<com.size(); i++){
            	%>
            <tr>
                <td><%=i+1 %></td>
                <td><%=com.get(i).getContent() %></td>
                <%
                if(com.get(i).getNum()==1){
                	%><td>판매자</td><%
                }
                else{
                	%><td><%=com.get(i).getBuyerId() %></td><%
                }
                %>
                <td><%=com.get(i).getDate() %></td>
            </tr>
            	<%
				}
			}
			%>
		</table>
		<form method="post" action="service">
			<h2>내 용</h2>
			<textarea name="content" id="itemComment-textarea" cols="30" rows="10"></textarea><br>
			<input type="hidden" name="id" value="<%=buyerId %>">
            <input type="hidden" name="code" value="<%=code %>">
            <input type="hidden" name="command" value="itemComment">
            <%
            if(!buyerId.equals(id)){ // 판매자의 경우
            	%>
            	<input id="itemComment-Btn1" type="button" onclick="location.href='main?center=itemBuy&id=<%=buyerId %>&code=<%=code %>'" value="판매확정">
            	<input type="hidden" name="num" value="1">
            	<%
            }
            else{					// 구매자의 경우
            	%>
            	<input type="hidden" name="num" value="2">
            	<%
            }
            %>
            <input id="itemComment-Btn2" type="submit" value="입력">
            <input id="itemComment-Btn3" type="button" onclick="location.href='main'" value="메인으로">
		</form>
	</div>
</body>
</html>