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

	ArrayList<String> title = new ArrayList<>();
	ArrayList<String> price = new ArrayList<>();
	ArrayList<String> date = new ArrayList<>();
	
	for(int i=0; i<item.size(); i++){
		title.add(dao.getItem().get(i).getTitle());		
		price.add(dao.getItem().get(i).getPrice()+"원");
		date.add(dao.getItem().get(i).getDate()+"");			
	}
%>
<!-- title,price,date -->
<!-- 올라온 순서대로 -->
	<div id="center_wrap">	
		<div id="visual">
			<p class="visual_inner">
				<img src="" alt=""/>
			</p>
		</div>
		<h2>새로 올라온 상품</h2>		
		<div id=content>
			<ul>
				<!-- 더미 -->
				<!-- ItemDAO>server>center -->
				<li>
					<a href="01_main.jsp?center=categorypage.jsp">
						<img src="${request.contextPath}resource/img/img-01.jpg" wight="190" height="190">
						<strong><%=title.get(title.size()-1) %></strong>
						<p><%=price.get(price.size()-1) %></p>
						<p><%=date.get(date.size()-1) %>
					</a>
				</li>
				<li>
					<a href="01_main.jsp?center=categorypage.jsp">
						<img>
						<strong><%=title.get(title.size()-2) %></strong>	
						<p><%=price.get(price.size()-2) %></p>
						<p><%=date.get(date.size()-2) %>		
					</a>
				</li>
				<li>
					<a href="01_main.jsp?center=categorypage.jsp">
						<strong><%=title.get(title.size()-3) %></strong>
						<p><%=price.get(price.size()-3) %></p>
						<p><%=date.get(date.size()-3) %>
						<img>			
					</a>
				</li>
				<li>
					<a href="01_main.jsp?center=categorypage.jsp">
						<strong><%=title.get(title.size()-4) %></strong>
						<img>			
					</a>
				</li>
				<li>
					<a href="01_main.jsp?center=categorypage.jsp">
						<strong><%=title.get(title.size()-5) %></strong>
						<img>			
					</a>
				</li>
				<li>
					<a href="01_main.jsp?center=categorypage.jsp">
						<strong><%=title.get(title.size()-6) %></strong>	
						<img>		
					</a>
				</li>
				<li>
					<a href="01_main.jsp?center=categorypage.jsp">
						<strong><%=title.get(title.size()-7) %></strong>
						<img>			
					</a>
				</li>
				<li>
					<a href="01_main.jsp?center=categorypage.jsp">
						<span>title.get(title.size()-8)</span>
						<img>			
					</a>
				</li>
                <li>
					<a href="01_main.jsp?center=categorypage.jsp">
						<span>title.get(title.size()-9) %></span>
						<img>
					</a>
				</li>
                <li>
					<a href="01_main.jsp?center=categorypage.jsp">
						<span>title.get(title.size()-10) %></span>
						<img>
					</a>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>