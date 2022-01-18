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
int code = Integer.parseInt(request.getParameter("code"));
ItemDAO dao = ItemDAO.getInstance();
ItemDTO item = null;

ArrayList<ItemDTO> list = dao.getItem();

for(int i=0; i<list.size(); i++){
	if(list.get(i).getCode() == code){
		item = list.get(i);
	}
}

%>
    <div class="itemView-div">
        <section id="itemView-sec1">
            <img id="itemView-img" src="">
            <table id="itemView-table">
                <tr>
                    <th><img src="<%=item.getImage_path() %>"></th>
                </tr>
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
                    <td><h3 id="itemView-h3">ㆍ조회수&nbsp;&nbsp; <%=item.getView() %>회</h3></td>
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
                    <td>
                        <input id="itemView-btn1" type="button" value="찜하기">
                        <input id="itemView-btn2" type="button" value="구매하기">
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