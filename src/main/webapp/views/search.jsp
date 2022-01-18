<%@ page import="item.ItemDAO"%>
<%@ page import="item.ItemDTO"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8"); 
	String word = request.getParameter("keyword");
	
	ItemDAO dao = ItemDAO.getInstance();
	ArrayList<ItemDTO> item = dao.getItem();
	
	ArrayList<String> title = new ArrayList<>();
	ArrayList<String> reward = new ArrayList<>();
	int cnt = 0;
	System.out.println(word);
	// 제목 추출
	
	for(int i=0; i<item.size(); i++){
		title.add(item.get(i).getTitle());		
	}
	
	// 단어를 분해 해서 검색
	
	for(int i=0; i<item.size(); i++){
		if(title.get(i).contains(word)){
			reward.add(title.get(i));
			cnt ++;
			
		}
	}
	for(int i=0; i<reward.size(); i++){	
	%>
	<p><%=reward.get(i)%></p>
	<% }%>
	<p><%=cnt %></p>
	<p><%=word %></p>
</body>
</html>