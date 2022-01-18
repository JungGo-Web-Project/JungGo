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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/boardMain.css"
	type="text/css">
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
		<table id="boardMain-table">
			<tr>
				<th colspan="4"><h1 id="boardMain-title"
						onclick="location.href='main?center=boardList&list=1'">자유게시판</h1>
					<br></th>
			</tr>
			<tr>
			<%
			if(free.size()>=4){
				for(int i=0; i<4; i++){
					%>
					<td><section id="boardMain-sec"
						onclick="location.href='main?center=boardView&code=<%=free.get(i).getCode() %>'">
						<br>
						<br>
						<h1><%=free.get(i).getTitle() %></h1>
						<h3>
							작성자 :
							<%=free.get(i).getId() %></h3>
						<h3>
							작성일 :
							<%=free.get(i).getDate() %></h3>
						<h3>
							조회수 :
							<%=free.get(i).getView() %></h3>
					</section></td>
					<%
				}
			}
			else if(free.size()<4){
				for(int i=0; i<free.size(); i++){
					%>
					<td><section id="boardMain-sec"
						onclick="location.href='main?center=boardView&code=<%=free.get(i).getCode() %>'">
						<br>
						<br>
						<h1><%=free.get(i).getTitle() %></h1>
						<h3>
							작성자 :
							<%=free.get(i).getId() %></h3>
						<h3>
							작성일 :
							<%=free.get(i).getDate() %></h3>
						<h3>
							조회수 :
							<%=free.get(i).getView() %></h3>
					</section></td>
					<%
				}
			}
			%>
			</tr>
		</table>
		<hr id="boardMain-hr2">
		<table>
			<tr>
				<th colspan="4"><h1 id="boardMain-title"
						onclick="location.href='main?center=boardList&list=2'">구매 후기</h1>
					<br></th>
			</tr>
			<tr>
			<%
			if(after.size()>=4){
				for(int i=0; i<4; i++){
					%>
					<td><section id="boardMain-sec"
						onclick="location.href='main?center=boardView&code=<%=after.get(i).getCode() %>'">
						<br>
						<br>
						<h1><%=after.get(i).getTitle() %></h1>
						<h3>
							작성자 :
							<%=after.get(i).getId() %></h3>
						<h3>
							작성일 :
							<%=after.get(i).getDate() %></h3>
						<h3>
							조회수 :
							<%=after.get(i).getView() %></h3>
					</section></td>
					<%
				}
			}
			else if(after.size()<4){
				for(int i=0; i<after.size(); i++){
					%>
					<td><section id="boardMain-sec"
						onclick="location.href='main?center=boardView&code=<%=after.get(i).getCode() %>'">
						<br>
						<br>
						<h1><%=after.get(i).getTitle() %></h1>
						<h3>
							작성자 :
							<%=after.get(i).getId() %></h3>
						<h3>
							작성일 :
							<%=after.get(i).getDate() %></h3>
						<h3>
							조회수 :
							<%=after.get(i).getView() %></h3>
					</section></td>
					<%
				}
			}
			%>
			</tr>
		</table>
		<hr id="boardMain-hr2">
		<table>
			<tr>
				<th colspan="4"><h1 id="boardMain-title"
						onclick="location.href='main?center=boardList&list=3'">판매 요청</h1>
					<br></th>
			</tr>
			<tr>
			<%
			if(reque.size()>=4){
				for(int i=0; i<4; i++){
					%>
					<td><section id="boardMain-sec"
						onclick="location.href='main?center=boardView&code=<%=reque.get(i).getCode() %>'">
						<br>
						<br>
						<h1><%=reque.get(i).getTitle() %></h1>
						<h3>
							작성자 :
							<%=reque.get(i).getId() %></h3>
						<h3>
							작성일 :
							<%=reque.get(i).getDate() %></h3>
						<h3>
							조회수 :
							<%=reque.get(i).getView() %></h3>
					</section></td>
					<%
				}
			}
			else if(reque.size()<4){
				for(int i=0; i<reque.size(); i++){
					%>
					<td><section id="boardMain-sec"
						onclick="location.href='main?center=boardView&code=<%=reque.get(i).getCode() %>'">
						<br>
						<br>
						<h1><%=reque.get(i).getTitle() %></h1>
						<h3>
							작성자 :
							<%=reque.get(i).getId() %></h3>
						<h3>
							작성일 :
							<%=reque.get(i).getDate() %></h3>
						<h3>
							조회수 :
							<%=reque.get(i).getView() %></h3>
					</section></td>
					<%
				}
			}
			%>
			</tr>
		</table>
		<hr id="boardMain-hr2">
	</div>
</body>
</html>