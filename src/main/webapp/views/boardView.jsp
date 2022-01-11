<%@page import="java.util.ArrayList"%>
<%@page import="board.boardDAO"%>
<%@page import="board.boardDTO"%>
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
            <header class="boardView-header">
                <h1>게시글 보기</h1>
            </header>
            <main class="boardView-main">
            <%
            int code = Integer.parseInt(request.getParameter("code"));
            
            boardDAO dao = boardDAO.getInstance();
            ArrayList<boardDTO> allBoard = dao.getBoard();
            ArrayList<boardDTO> board = new ArrayList<boardDTO>();
            for(int i=0; i<allBoard.size(); i++){
                if(allBoard.get(i).getCode() == code){
                    board.add(allBoard.get(i));
                }
            }
            dao.viewBoard(board.get(0));
            int list = 0;
           	if(board.get(0).getCategory().equals("자유게시판")){
           		list = 1;
           	}
           	else if(board.get(0).getCategory().equals("구매 후기")){
           		list = 2;
           	}
           	else if(board.get(0).getCategory().equals("판매 요청")){
           		list = 3;
           	}
            %>
                    <section class="boardView-sec">
                        <article id="boardView-arti1">제  목 : <%=board.get(0).getTitle() %></article>
                        <article id="boardView-arti2">작성자 : <%=board.get(0).getId() %></article>
                        <article id="boardView-arti3">작성일 : <%=board.get(0).getDate() %></article>
                        <article id="boardView-arti4">조회수 : <%=board.get(0).getView()+1 %></article>
                    </section>
                    <textarea id="boardView-textarea" name="content" readonly><%=board.get(0).getContent() %></textarea><br>
                <form id="boardView-form" method="post" action="_14_checkPassForm.jsp">
                    <input type="hidden" name="code" value="<%=board.get(0).getCode() %>">
                </form>
            </main>
            <footer class="boardView-footer">
                   <%String id = (String) session.getAttribute("log");
                    if(board.get(0).getId().equals(id)){%>
                        <input id="boardView-submit" type="submit" value="수정" form="form">
                <%
                    }%>
                    <input type="button" id="boardView-list" onclick="location.href='boardList.jsp?list=<%=list %>'" value="목록">
            </footer>
        </div>
</body>
</html>