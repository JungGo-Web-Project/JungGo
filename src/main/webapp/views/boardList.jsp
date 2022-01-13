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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/boardList.css" type="text/css">
    <title>main</title>
</head>
<body>
<%
String num = request.getParameter("list");
String cate = "";
if(num != null){
int list = Integer.parseInt(num);
	if(list == 1){
		cate = "자유게시판";
	}
	else if(list == 2){
		cate = "구매 후기";
	}
	else if(list == 3){
		cate = "판매 요청";
	}
}
else{
	cate = "자유게시판";
}
BoardDAO dao =  BoardDAO.getInstance();
ArrayList<BoardDTO> allBoard = dao.getBoard();
ArrayList<BoardDTO> board = new ArrayList<BoardDTO>();


	for(int i=0; i<allBoard.size(); i++){
		if(allBoard.get(i).getCategory().equals(cate)){
	board.add(allBoard.get(i));
		}
	}
%>
    <div class="boardList-div">
        	<h1 id="boardList-h1"><%=cate %></h1>
            <hr id="boardList-hr1">
            <table id="boardList-table" border="5">
                <tr>
                    <td id="boardList-title" style="width: 4vw">번 호</td>
                    <td id="boardList-title" style="width: 30vw">제  목</td>
                    <td id="boardList-title" style="width: 10vw">작성자</td>
                    <td id="boardList-title" style="width: 5vw">조회수</td>
                    <td id="boardList-title" style="width: 15vw">작성일자</td>
                </tr>
                <%
                
                for(int i=0; i<board.size(); i++){
                	%>
                <tr>
                    <td><%=board.get(i).getCode() %></td>
                    <td><a href="main?center=boardView&code=<%=board.get(i).getCode() %>" ><%=board.get(i).getTitle() %></a></td>
                    <td><%=board.get(i).getId() %></td>
                    <td><%=board.get(i).getView() %></td>
                    <td><%=board.get(i).getDate() %></td>
                </tr>
                	<%
                }
                
                %>
            </table>
            <hr id="boardList-hr2">
            <form method="post" action="service">
            <input type="hidden" name="category" value="<%=cate %>">
            <input type="hidden" name="command" value="boardList">
            <input type="submit" id="boardList-submit" value="글 작성" >
            <input type="button" id="boardList-allList" onclick="location.href='main?center=boardMain'" value="전체 목록">
            </form>
            <hr id="hr2">
    </div>
</body>
</html>