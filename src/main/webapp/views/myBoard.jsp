<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
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
BoardDAO dao = BoardDAO.getInstance();
ArrayList<BoardDTO> list = dao.myBoardList(board, id);
%>
	<div class="myBoardWrap">
        <div class="myBoard">
            <div class="myBoardTitle">
                <span id="myBoardTitle">작성한 글</span>
            </div>
            <div class="boardSelect">
                <button class="boardSelect" onclick="location.href='main?center=myBoard&board=자유게시판'">자유게시판</button>
                <button class="boardSelect" onclick="location.href='main?center=myBoard&board=구매 후기'">구매후기</button>
                <button class="boardSelect" onclick="location.href='main?center=myBoard&board=판매 요청'">판매요청</button>
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
           			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	            	if(list.size() > 0){
	            		for(BoardDTO b : list){ 
	            			int no = b.getCode();
	            			String category = b.getCategory();
	            			String title = b.getTitle();
	            			int view = b.getView();
	            			String date = sdf.format(b.getDate());
	            			String url = "main?center=boardView&code="+b.getCode();
	            		%>
           			<tr class="myBoard">
                        <td class="no"><%=no %></td>
                        <td class="category"><%=category %></td>
                        <td class="title"><a class=myBoardUrl href=<%=url %>><%=title %></a></td>
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