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
	String code = request.getParameter("code");
	int ncode = Integer.valueOf(code);

	%>
	<%if(ncode == 1) {%>
		<h2>디지털기기의 추천상품</h2>
	<%} %>
	<%if(ncode == 2) {%>
		<h2>생활가전의 추천상품</h2>
	<%} %>
	<%if(ncode == 3) {%>
		<h2>남성/여성의류의 추천상품</h2>
	<%} %>
	<%if(ncode == 4) {%>
		<h2>가구/인테리어의 추천상품</h2>
	<%} %>
	<%if(ncode == 5) {%>
		<h2>스포츠용품의 추천상품</h2>
	<%} %>
	<%if(ncode == 6) {%>
		<h2>서적/음반의 추천상품</h2>
	<%} %>
	<%if(ncode == 7) {%>
		<h2>기타 추천상품</h2>
	<%} %>
	<div id="content">
		<ul>
			<% for(int i=0; i<item.size(); i++){
				if(item.get(i).getCategory() == ncode){
				%>
					<li>
						<a href="main?center=itemView&code=<%=item.get(i).getCode() %>">
							<img src="<%=item.get(i).getImage_path() %>" width="230" height="190"><br>
							<p id=inner_content><%=item.get(i).getTitle() %></p>
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
				};		
			}
			%>
		</ul>
	</div>
</body>
</html>