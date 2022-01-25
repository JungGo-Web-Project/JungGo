<%@ page import="item.ItemDAO"%>
<%@ page import="item.ItemDTO"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.sql.Timestamp" %>
<%@ page import="utility.DBManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<%
	ItemDAO dao = ItemDAO.getInstance();	
	ArrayList<ItemDTO> item = dao.getItem();

%>
	<div id="center_wrap">	
		<div id="visual">
			<p class="visual_inner">
				<img width="1280px"height="300px" src="${request.contextPath}resource/img/ad1.jpg" alt=""/>
			</p>
		</div>
		<h2>새로 올라온 상품</h2>		
		<div id=content>
			<ul>
				<%
				for(int i=item.size()-1; i>=0; i--){
				%>
				<li>
					<a href="main?center=itemView&code=<%=item.get(i).getCode() %>">
						<img src="${request.contextPath}upload/<%=item.get(i).getImage_path() %>" width="230" height="190"><br>
						<p id=inner_title><%=item.get(i).getTitle() %></p>
						<strong id=inner_content><%=item.get(i).getPrice() %>원</strong>
						<p id=inner_content><%=item.get(i).getDate() %>					
					</a>
					<%if(item.get(i).getStatus().equals("판매중")){ %>
					<strong><%=item.get(i).getStatus() %></strong>
					<%} %>
					<%if(item.get(i).getStatus().equals("판매완료")){ %>
					<strong style="color: red;"><%=item.get(i).getStatus() %></strong>
					<%} %>
				</li>
				<%
				}
				%>
			</ul>
		</div>
	</div>
</body>
</html>