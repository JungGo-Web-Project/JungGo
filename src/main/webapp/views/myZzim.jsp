<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="category.CategoryDAO"%>
<%@page import="item.ItemDTO"%>
<%@page import="item.ItemDAO"%>
<%@page import="zzim.ZzimDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="zzim.ZzimDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/myZzim.css">
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
ZzimDAO zzimDao = ZzimDAO.getInstance();
ItemDAO itemDao = ItemDAO.getInstance();
CategoryDAO cateDao = CategoryDAO.getInstance();

ArrayList<ZzimDTO> list = zzimDao.getZzimById(id);
%>
	<div class="myZzimWrap">
        <div class="myZzim">
            <div class="myZzimTitle">
                <span id="myZzimTitle">찜한 상품</span>
            </div>
            <div class="ZzimList">
                <table class="myZzim">
                    <tr class="myZzim">
                        <th class="no">No</th>
                        <th class="category">Category</th>
                        <th class="thumbnail">Image</th>
                        <th class="title">Title</th>
                        <th class="price">Price</th>
                        <th class="date">Date</th>
                    </tr>
	            	<%
	            	if(list.size() > 0){
	            		for(int i=list.size()-1; i>=0; i--){
	            			ItemDTO item = itemDao.getItemByCode(list.get(i).getItemCode());
	            			if(item.getStatus().equals("판매중")){
		            			int no = item.getCode();
		            			String category = cateDao.getCategoryString(item.getCategory());
		            			String thumbnail = item.getImage_path();
		            			String title = item.getTitle();
		            			String price = new DecimalFormat("###,###").format(item.getPrice()) + "원";
		            			String date = new SimpleDateFormat("yyyy-MM-dd").format(item.getDate());
		            			String url = "main?center=itemView&code="+item.getCode();
		            		%>
	           			<tr class="myZzim">
	                        <td class="no"><%=no %></td>
	                        <td class="category"><%=category %></td>
	                        <td class="thumbnail"><img class="thumbnail" src="${request.contextPath}upload/<%=thumbnail%>"></td>
	                        <td class="title"><a class=myZzimUrl href=<%=url %>><%=title %></a></td>
	                        <td class="price"><%=price %></td>
	                        <td class="date"><%=date %></td>
	                    </tr>
	            				
	            			<%}
	            		}
	            	}
	            	else{%>
                    <tr class="myZzim">
                        <td class="textWarning" colspan="5">찜한 상품이 없습니다</td>
                    </tr>
	            	<%} %>
                </table>
            </div>
        </div>
    </div>
</body>
</html>