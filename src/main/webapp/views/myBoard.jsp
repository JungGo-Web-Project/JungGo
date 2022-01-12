<%@page import="board.boardDAO"%>
<%@page import="board.boardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/myBoard.css">
<title>myBoard</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

String id = "";
String board = request.getParameter("board");

if(session.getAttribute("log") == null){
	request.getRequestDispatcher("main?center=login").forward(request, response);
}
else{
	id=session.getAttribute("log").toString();
}
if(board == null) board = "자유게시판";

boardDAO dao = boardDAO.getInstance();

ArrayList<boardDTO> list = dao.myBoardList(board, id);
%>
	<div class="myBoardWrap">
        <div class="myBoard">
            <div class="myBoardTitle">
                <span id="myBoardTitle">작성한 글</span>
            </div>
            <div class="boardSelect">
                <button class="boardSelect" onclick="location.href='main?center=myBoard&board=자유게시판'">자유게시판</button>
                <button class="boardSelect" onclick="location.href='main?center=myBoard&board=구매후기'">구매후기</button>
                <button class="boardSelect" onclick="location.href='main?center=myBoard&board=판매요청'">판매요청</button>
            </div>
            <div class="boardList">
                <table class="myBoard">
                    <tr class="myBoard">
                        <th class="no">No</th>
                        <th class="category">Category</th>
                        <th class="title">Title</th>
                        <th class="view">View</th>
                        <th class="date">Date</th>
                    </tr>
	            	<%
	            	if(list.size() > 0){
	            		for(boardDTO b : list){ 
	            			int no = b.getCode();
	            			String category = b.getCategory();
	            			String title = b.getTitle();
	            			int view = b.getView();
	            			String date = String.format("yyyy-mm-dd", b.getDate());
	            		%>
           			<tr class="myBoard">
                        <td class="no"><%=no %></td>
                        <td class="category"><%=category %></td>
                        <td class="title"><%=title %></td>
                        <td class="view"><%=view %></td>
                        <td class="date"><%=date %></td>
                    </tr>
	            		<%}
	            	}
	            	else{%>
                    <tr class="myBoard">
                        <td class="textWarning" colspan="5">작성한 글이 없습니다</td>
                    </tr>
	            	<%} %>
                </table>
            </div>
        </div>
    </div>
</body>
</html>