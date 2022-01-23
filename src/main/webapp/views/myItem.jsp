<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="item.ItemDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="item.ItemDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/myItem.css">
<title>myItem</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String id = "";
String statue = request.getParameter("statue");
if(session.getAttribute("log") == null){
	request.getRequestDispatcher("main?center=login").forward(request, response);
}
else{
	id=session.getAttribute("log").toString();
}
if(statue == null) statue = "판매중";
ItemDAO dao = ItemDAO.getInstance();
ArrayList<ItemDTO> list = dao.getMyItem(statue, id);
%>

	<div class="myItemWrap">
        <div class="myItem">
            <div class="myItemTitle">
                <span id="myItemTitle">등록한 상품</span>
            </div>
            <div class="itemSelect">
                <button class="itemSelect" onclick="location.href='main?center=myItem&statue=판매중'">판매중</button>
                <button class="itemSelect" onclick="location.href='main?center=myItem&statue=판매완료'">판매완료</button>
            </div>
            <div class="itemList">
                <table class="myItem">
                    <tr class="myItem">
                        <th class="no">No</th>
                        <th class="title">Title</th>
                        <th class="price">Price</th>
                        <th class="view">View</th>
                        <th class="date">Date</th>
                    </tr>
                    <%
	            	if(list.size() > 0){
	            		for(int i=list.size()-1; i>=0; i--){
	            			ItemDTO item = list.get(i);
	            			int no = item.getCode();
	            			String title = item.getTitle();
	            			String price = new DecimalFormat("###,###").format(item.getPrice()) + "원";
	            			int view = item.getView();
	            			String date = new SimpleDateFormat("yyyy-MM-dd").format(item.getDate());
	            			String url = "main?center=zzimListView&code="+item.getCode();
	            		%>
           			<tr class="myItem">
                        <td class="no"><%=no %></td>
                        <td class="title"><a class=myItemUrl href=<%=url %>><%=title %></a></td>
                        <td class="price"><%=price %></td>
                        <td class="view"><%=view %></td>
                        <td class="date"><%=date %></td>
                    </tr>
	            		<%}
	            	}
	            	else{%>
                    <tr class="myItem">
                        <td class="textWarning" colspan="5">등록된 상품이 없습니다</td>
                    </tr>
	            	<%} %>
                </table>
            </div>
        </div>
    </div>
</body>
</html>