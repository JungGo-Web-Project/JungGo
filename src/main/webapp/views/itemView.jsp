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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/itemView.css" type="text/css">
    <title>main</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

String id = ""; // 접속한 사람 아이디
String user = ""; // 판매자 아이디
if(session.getAttribute("log") != null){
	id=session.getAttribute("log").toString();
}

int code = Integer.parseInt(request.getParameter("code"));
ItemDAO dao = ItemDAO.getInstance();
ItemDTO item = null;

ArrayList<ItemDTO> list = dao.getItem();

for(int i=0; i<list.size(); i++){
	if(list.get(i).getCode() == code){
		item = list.get(i);
	}
}
user = item.getSellerId();
dao.viewItem(code);
%>
    <div class="itemView-div">
        <section id="itemView-sec1">
            <img id="itemView-img" src="<%=item.getImage_path() %>">
            <table id="itemView-table">
                <tr>
                    <th><h1 id="itemView-h1"><%=item.getTitle() %></h1></th>
                </tr>
                <tr>
                    <td>
                        <h2 id="itemView-h2"><%=item.getPrice() %></h2>
                        <hr id="itemView-hr">
                    </td>
                </tr>
                <tr>
                    <td><h3 id="itemView-h3">ㆍ조회수&nbsp;&nbsp; <%=item.getView()+1 %>회</h3></td>
                </tr>
                <tr>
                    <td><h3 id="itemView-h3">ㆍ상품상태 <%=item.getOption1() %></h3></td>
                </tr>
                <tr>
                    <td><h3 id="itemView-h3">ㆍ교환여부 <%=item.getOption2() %></h3></td>
                </tr>
                <tr>
                    <td><h3 id="itemView-h3">ㆍ거래지역 <%=item.getAddress() %></h3></td>
                </tr>
                <tr>
                    <td><h3 id="itemView-h3">ㆍ<%=item.getStatus() %></h3></td>
                </tr>
                <tr>
                    <td>
                        <%
                        if(id.equals(user)){
                        	if(item.getBuyerId() != ""){
                        	%>
                        <input id="itemView-btn" type="button" value="수정하기" onclick="location.href='main?center=itemUpdateForm&code=<%=code %>'">
                        	<%
                        	}
                        }
                        else{
                        	if(!id.equals("") && item.getStatus().equals("판매중")){
                        	%>
                       <form method="post" action="service">
                        <input type="hidden" name="command" value="itemView">
                        <input type="hidden" name="id" value="<%=id %>">
                        <input type="hidden" name="code" value="<%=code %>">
                        <input id="itemView-btn" type="submit" value="구매하기">
                       </form>
                        	<%
                        	}
                        }
                        %>
                        <input id="itemView-btn" type="button" value="목록으로" onclick="location.href='main?center=itemList&category=<%=item.getCategory() %>'">
                    </td>
                </tr>
            </table>
        </section>
        <section id="itemView-sec2">
            <h3 id="itemView-h3">상품정보</h3>
            <hr id="itemView-hr">
            <p id="itemView-p"><%=item.getContent() %></p>
        </section>
    </div>
</body>
</html>