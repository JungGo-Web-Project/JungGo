<%@ page import="item.ItemDAO"%>
<%@ page import="item.ItemDTO"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
</head>
<body>
	<% 
	String word = request.getParameter("keyword");
	
	ItemDAO dao = ItemDAO.getInstance();
	ArrayList<ItemDTO> item = dao.getItem();
	
	ArrayList<String> title = new ArrayList<>();
	ArrayList<String> reward = new ArrayList<>();
	
	// 제목 추출	
	for(int i=0; i<item.size(); i++){
		title.add(item.get(i).getTitle());		
	}
	
	// 단어를 분해 해서 검색
	
	
	%>
	<h2>" <%=word %> "에 대한 검색결과</h2>
	<div id="content">
		<ul>
			<% for(int i=0; i<item.size(); i++){
				if(title.get(i).contains(word)){
				%>
					<li>
						<a href="main?center=itemView&code=<%=item.get(i).getCode() %>">
							<img src="<%=item.get(i).getImage_path() %>" width="230" height="190"><br>
							<p id=inner_content><%=item.get(i).getTitle() %></p>
							<strong id=inner_content><%=item.get(i).getPrice() %>원</strong>
							<p id=inner_content><%=item.get(i).getDate() %>
						</a>
						<%if(item.get(i).getStatus().equals("판매중")){ %>
						<strong id=inner_content><%=item.get(i).getStatus() %></strong>
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