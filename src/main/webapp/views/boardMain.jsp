<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="utility.DBManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/boardMain.css" type="text/css">
<title>main</title>
</head>
<body>
	<%
BoardDAO dao = BoardDAO.getInstance();

ArrayList<BoardDTO> board = dao.getBoard();

ArrayList<BoardDTO> free = new ArrayList<BoardDTO>();
ArrayList<BoardDTO> after = new ArrayList<BoardDTO>();
ArrayList<BoardDTO> reque = new ArrayList<BoardDTO>();

for(int i=0; i<board.size(); i++){
	if(board.get(i).getCategory().equals("자유게시판")){
		free.add(board.get(i));
	}
	else if(board.get(i).getCategory().equals("구매 후기")){
		after.add(board.get(i));
	}
	else if(board.get(i).getCategory().equals("판매 요청")){
		reque.add(board.get(i));
	}
}
%>
	<div class="boardMain-div">
		<hr id="boardMain-hr1">
		<h1 id="boardMain-title" onclick="location.href='main?center=boardList&list=1'">자유게시판</h1>
		<table id="boardMain-table" border="2">
            <tr>
				<th>제목</th>
                <th>작성자</th>
                <th>작성일</th>
                <th>조회수</th>
			</tr>
			<%
			if(free.size()>=4){
				for(int i=0; i<4; i++){
					%>
				<tr>
				<td style="width: 40vw;"><a href="main?center=boardView&code=<%=free.get(i).getCode() %>"><%=free.get(i).getTitle() %></a></td>
                <td><%=free.get(i).getId() %></td>
                <td><%=free.get(i).getDate() %></td>
                <td><%=free.get(i).getView() %></td>
				</tr>
					<%
				}
			}
			else if(free.size()<4){
				for(int i=0; i<free.size(); i++){
					%>
				<tr>
				<td style="width: 40vw;"><a href="main?center=boardView&code=<%=free.get(i).getCode() %>"><%=free.get(i).getTitle() %></a></td>
                <td><%=free.get(i).getId() %></td>
                <td><%=free.get(i).getDate() %></td>
                <td><%=free.get(i).getView() %></td>
				</tr>
					<%
				}
			}
			%>
		</table>
		<hr id="boardMain-hr2">
		<h1 id="boardMain-title" onclick="location.href='main?center=boardList&list=2'">구매 후기</h1>
		<table id="boardMain-table" border="2">
			<tr>
				<th>제목</th>
                <th>작성자</th>
                <th>작성일</th>
                <th>조회수</th>
			</tr>
			<%
			if(after.size()>=4){
				for(int i=0; i<4; i++){
					%>
				<tr>
				<td style="width: 40vw;"><a href="main?center=boardView&code=<%=after.get(i).getCode() %>"><%=after.get(i).getTitle() %></a></td>
                <td><%=after.get(i).getId() %></td>
                <td><%=after.get(i).getDate() %></td>
                <td><%=after.get(i).getView() %></td>
				</tr>
					<%
				}
			}
			else if(after.size()<4){
				for(int i=0; i<after.size(); i++){
					%>
				<tr>
				<td style="width: 40vw;"><a href="main?center=boardView&code=<%=after.get(i).getCode() %>"><%=after.get(i).getTitle() %></a></td>
                <td><%=after.get(i).getId() %></td>
                <td><%=after.get(i).getDate() %></td>
                <td><%=after.get(i).getView() %></td>
				</tr>
					<%
				}
			}
			%>
		</table>
		<hr id="boardMain-hr2">
		<h1 id="boardMain-title" onclick="location.href='main?center=boardList&list=3'">판매 요청</h1>
		<table id="boardMain-table" border="2">
			<tr>
				<th>제목</th>
                <th>작성자</th>
                <th>작성일</th>
                <th>조회수</th>
			</tr>
			<%
			if(reque.size()>=4){
				for(int i=0; i<4; i++){
					%>
				<tr>
				<td style="width: 40vw;"><a href="main?center=boardView&code=<%=reque.get(i).getCode() %>"><%=reque.get(i).getTitle() %></a></td>
                <td><%=reque.get(i).getId() %></td>
                <td><%=reque.get(i).getDate() %></td>
                <td><%=reque.get(i).getView() %></td>
				</tr>
					<%
				}
			}
			else if(reque.size()<4){
				for(int i=0; i<reque.size(); i++){
					%>
				<tr>
				<td style="width: 40vw;"><a href="main?center=boardView&code=<%=reque.get(i).getCode() %>"><%=reque.get(i).getTitle() %></a></td>
                <td><%=reque.get(i).getId() %></td>
                <td><%=reque.get(i).getDate() %></td>
                <td><%=reque.get(i).getView() %></td>
				</tr>
					<%
				}
			}
			%>
		</table>
		<hr id="boardMain-hr2">
	</div>
</body>
</html>