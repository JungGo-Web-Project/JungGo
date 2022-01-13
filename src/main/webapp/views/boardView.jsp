<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/boardView.css" type="text/css">
    <title>main</title>
</head>
<body>
        <div class="boardView-div">
		<%
		int code = Integer.parseInt(request.getParameter("code"));

		BoardDAO dao = BoardDAO.getInstance();
		ArrayList<BoardDTO> allBoard = dao.getBoard();
		BoardDTO board = null;
		for (int i = 0; i < allBoard.size(); i++) {
			if (allBoard.get(i).getCode() == code) {
				board = allBoard.get(i);
			}
		}
		dao.viewBoard(board);
		int list = 0;
		if (board.getCategory().equals("자유게시판")) {
			list = 1;   
		} else if (board.getCategory().equals("구매 후기")) {
			list = 2;
		} else if (board.getCategory().equals("판매 요청")) {
			list = 3;
		}
		%>
		<section class="boardView-sec">
                        <article id="boardView-arti1">제 &nbsp;목 : <%=board.getTitle() %></article>
                        <article id="boardView-arti2">작성자 : <%=board.getId() %></article>
                        <article id="boardView-arti3">작성일 : <%=board.getDate() %></article>
                        <article id="boardView-arti4">조회수 : <%=board.getView()+1 %></article>
                    </section>
                    <textarea id="boardView-textarea" name="content" readonly><%=board.getContent() %></textarea><br>
                    <input type="hidden" name="code" value="<%=board.getCode() %>">
                   <%
                   String id = (String) session.getAttribute("log");
                    if(board.getId().equals(id)){%>
                    	<input id="boardView-submit" type="button" value="수정" onclick="location.href='main?center=boardCheck&num=1&code=<%=board.getCode() %>'">
                    	<input id="boardView-submit" type="button" value="삭제" onclick="location.href='main?center=boardCheck&num=2&code=<%=board.getCode() %>'">
                <%
                    }%>
                    <input type="button" id="boardView-list" onclick="location.href='main?center=boardList&list=<%=list %>'" value="목록">
        </div>
</body>
</html>