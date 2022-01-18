<%@page import="category.CategoryDTO"%>
<%@page import="category.CategoryDAO"%>
<%@page import="item.ItemDTO"%>
<%@page import="item.ItemDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int category = Integer.parseInt(request.getParameter("category"));

	ItemDAO dao = ItemDAO.getInstance();	
	ArrayList<ItemDTO> list = dao.getItem();
	ArrayList<ItemDTO> temp = new ArrayList<ItemDTO>();
	for(int i=0; i<list.size(); i++){
		if(list.get(i).getCategory() == category){
			temp.add(list.get(i));
		}
	}
	
	
	CategoryDAO cDao = CategoryDAO.getInstance();
	ArrayList<CategoryDTO> catego = cDao.getCategory();
	
	String cate = "";
	for(int i=0; i<catego.size(); i++){
		if(catego.get(i).getCode() == category){
			cate = catego.get(i).getCategory();
		}
	}
	
	
%>
	<div class="itemList-div">	
		<h1><%=cate %></h1>		
			<ul>
				<%
				for(int i=0; i<temp.size(); i++){
					%>
				<li>
					<a href="main?center=itemView&code=<%=temp.get(i).getCode() %>">
						<img src="<%=temp.get(i).getImage_path() %>" wight="190" height="190">
						<strong><%=temp.get(i).getTitle() %></strong>
						<p><%=temp.get(i).getPrice() %>원</p>
						<p><%=temp.get(i).getDate() %></p>
					</a>
				</li>
					<%
				}
				%>
			</ul>
	</div>
</body>
</html>