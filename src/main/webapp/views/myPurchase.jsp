<%@page import="java.text.DecimalFormat"%>
<%@page import="category.CategoryDTO"%>
<%@page import="category.CategoryDAO"%>
<%@page import="item.ItemDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="item.ItemDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/myPurchase.css">
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
ItemDAO itemDao = ItemDAO.getInstance();
CategoryDAO cateDao = CategoryDAO.getInstance();

ArrayList<ItemDTO> list = itemDao.getMyPurchase(id);
ArrayList<CategoryDTO> cate = cateDao.getCategory();
%>
	<div class="myPurchaseWrap">
        <div class="myPurchase">
            <div class="myPurchaseTitle">
                <span id="myPurchaseTitle">구매한 상품</span>
            </div>
            <div class="purchaseList">
                <table class="myPurchase">
                    <tr class="myPurchase">
                        <th class="no">No</th>
                        <th class="category">Category</th>
                        <th class="title">Title</th>
                        <th class="price">Price</th>
                        <th class="date">Date</th>
                    </tr>
	            	<%
	            	if(list.size() > 0){
	            		for(int i=list.size()-1; i>=0; i--){
	            			ItemDTO item = list.get(i);
	            			int no = item.getCode();
	            			String category = cateDao.getCategoryString(item.getCategory());
	            			String title = item.getTitle();
	            			String price = new DecimalFormat("###,###").format(item.getPrice()) + "원";
	            			String date = new SimpleDateFormat("yyyy-MM-dd").format(item.getDate());
	            			String url = "main?center=itemView&code="+item.getCode();
	            		%>
           			<tr class="myBoard">
                        <td class="no"><%=no %></td>
                        <td class="category"><%=category %></td>
                        <td class="title"><a class=myPurchaseUrl href=<%=url %>><%=title %></a></td>
                        <td class="price"><%=price %></td>
                        <td class="date"><%=date %></td>
                    </tr>
	            		<%}
	            	}
	            	else{%>
                    <tr class="myPurchase">
                        <td class="textWarning" colspan="5">구매한 상품이 없습니다</td>
                    </tr>
	            	<%} %>
                </table>
            </div>
        </div>
    </div>
</body>
</html>