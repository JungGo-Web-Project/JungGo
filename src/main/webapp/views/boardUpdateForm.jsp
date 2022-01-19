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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/boardUpdateForm.css" type="text/css">
    <title>main</title>
</head>
<body>
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
			int list = 0;
			if (board.getCategory().equals("자유게시판")) {
		list = 1;
			} else if (board.getCategory().equals("구매 후기")) {
		list = 2;
			} else if (board.getCategory().equals("판매 요청")) {
		list = 3;
			}
	%>
	<div class="boardUpdateForm-div">
            <h1 id="boardUpdateForm-h1">게시글 수정</h1>
            <hr id="boardUpdateForm-hr1">
            <form method="post" action="service">
                <section id="boardUpdateForm-sec1">
                    <h2 id="boardUpdateForm-h2">제목</h2>
                    <input name="title" id="boardUpdateForm-title" type="text" required>
                </section>
                <hr id="boardUpdateForm-hr2">
                <section id="boardUpdateForm-sec1">
                    <h2 id="boardUpdateForm-h2">내용</h2>
                    <textarea name="content" id="boardUpdateForm-textarea" cols="30" rows="10"></textarea>
                </section>
                <hr id="boardUpdateForm-hr2">
                <section id="boardUpdateForm-sec1">
                    <h2 id="boardUpdateForm-h2">비밀번호</h2>
                    <input type="password" name="password" id="boardUpdateForm-password" required>
                </section>
                <hr id="boardUpdateForm-hr2">
                <input type="hidden" name="command" value="boardUpdate">
                <input type="hidden" name="code" value="<%=code %>">
                <input id="boardUpdateForm-submit" type="submit" value="적용">
                <button id="boardUpdateForm-cancle" onclick="location.href='main?center=boardMain'">취소</button>
            </form>
    </div>
</body>
</html>