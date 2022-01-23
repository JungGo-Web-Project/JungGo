<%@page import="java.text.DecimalFormat"%>
<%@page import="item.ItemDTO"%>
<%@page import="zzim.ZzimDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="item.ItemDAO"%>
<%@page import="zzim.ZzimDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/zzimListView.css">
<title>Insert title here</title>
</head>
<body>
<%
int code = Integer.parseInt(request.getParameter("code"));

ZzimDAO zzimDao = ZzimDAO.getInstance();
ItemDAO itemDao = ItemDAO.getInstance();

ArrayList<ZzimDTO> list = zzimDao.getZzimByItem(code);
ItemDTO item = itemDao.getItemByCode(code);
String url="main?center=itemView&code="+item.getCode();
String price = new DecimalFormat("###,###").format(item.getPrice()) + "원";

%>
    <div class="zzimListWrap">
        <div class="zzimList">
            <div class="itemView">
                <img id="itemImg" src="${request.contextPath}<%=item.getImage_path()%>">
                <span id="itemTitle"><a id="itemTitle" href=<%=url%>><%=item.getTitle()%></a></span>
                <span id="price"><%=price%></span>
            </div>
            
            <div class="zzimListView">
                <span id="listTitle">해당 상품을 찜한 회원</span>
                	<% 
                	if(list.size() > 0){ %>
                	<ul class="zzimList">
	                	<%for(int i=list.size()-1; i>=0; i--){ %>
		                    <li class="zzimList"><%=list.get(i).getBuyerId() %>
		                    <form method="post" action="service">
		                    <input type="hidden" name="id" value="<%=list.get(i).getBuyerId() %>">
		                    <input type="hidden" name="code" value="<%=code %>">
		                    <input type="hidden" name="command" value="itemView">
		                    <input type="hidden" name="check" value="1">
		                    <input id="zzimList-btn" type="submit" value="거래하기">
		                    </form>
		                    </li>                		
	                	<%}%>             		
	                </ul>
                	<%}
                	else{%>
                		<span id="defaultText">이 상품을 찜한 회원이 없습니다</span>
                	<%} %>
            </div>
        </div>
    </div>
</body>
</html>