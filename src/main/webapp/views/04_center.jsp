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
		price.add(dao.getItem().get(i).getPrice()+"");
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
						<span></span>						
					</a>
				</li>
				<li>
					<a href="01_main.jsp?center=categorypage.jsp">
						2
					</a>
				</li>
				<li>
					<a href="01_main.jsp?center=categorypage.jsp">
						3
					</a>
				</li>
				<li>
					<a href="01_main.jsp?center=categorypage.jsp">
						4
					</a>
				</li>
				<li>
					<a href="01_main.jsp?center=categorypage.jsp">
						5
					</a>
				</li>
				<li>
					<a href="01_main.jsp?center=categorypage.jsp">
						6
					</a>
				</li>
				<li>
					<a href="01_main.jsp?center=categorypage.jsp">
						7
					</a>
				</li>
				<li>
					<a href="01_main.jsp?center=categorypage.jsp">
						8
					</a>
				</li>
                <li>
					<a href="01_main.jsp?center=categorypage.jsp">
						9
					</a>
				</li>
                <li>
					<a href="01_main.jsp?center=categorypage.jsp">
						10
					</a>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>