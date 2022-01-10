<%@page import="board.boardDTO"%>
<%@page import="board.boardDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        div{
            display: grid;
            justify-content: center;
        }
        .top{
            height: 15vh;
            background-color: burlywood;
            text-align: center;
            font-size: 5em;
            color: white;
        }
        #boardList-table{
			text-align: center;
        }
        #hr1{
            margin-top: 30px;
            width: 70vw;
            border: thin solid black;
            margin-bottom: 30px;
        }
        #hr2{
            margin-top: 30px;
            width: 70vw;
            margin-bottom: 30px;
        }
        #sec1{
            display: flex;
            align-items: center;
        }
        h2{
            width: 200px;
        }
        #boardView-list{
            width: 100px;
            height: 60px;
            color: white;
            font-size: 1.5em;
            background-color: black;
        }
    </style>
    <title>main</title>
</head>
<body>
<% 
int list = Integer.parseInt(request.getParameter("list"));
boardDAO dao =  boardDAO.getInstance();
ArrayList<boardDTO> allBoard = dao.getBoard();
ArrayList<boardDTO> board = new ArrayList<boardDTO>();
String cate = "";
	if(list == 1){
		cate = "자유게시판";
	}
	else if(list == 2){
		cate = "구매 후기";
	}
	else if(list == 3){
		cate = "판매 요청";
	}

	for(int i=0; i<allBoard.size(); i++){
		if(allBoard.get(i).getCategory().equals(cate)){
			board.add(allBoard.get(i));
		}
	}
%>
    <div>
        <main>
        	<h1><%=cate %></h1>
            <hr id="hr1">

            <table id="boardList-table" border="5">
                <tr id="title">
                    <td id="title1" style="width: 4vw">번 호</td>
                    <td id="title2" style="width: 30vw">제  목</td>
                    <td id="title3" style="width: 10vw">작성자</td>
                    <td id="title4" style="width: 5vw">조회수</td>
                    <td id="title6" style="width: 15vw">작성일자</td>
                </tr>
                <%
                
                for(int i=0; i<board.size(); i++){
                	%>
                <tr id="tr">
                    <td><%=board.get(i).getCode() %></td>
                    <td><a href="boardView.jsp?code=<%=board.get(i).getCode() %>" ><%=board.get(i).getTitle() %></a></td>
                    <td><%=board.get(i).getId() %></td>
                    <td><%=board.get(i).getView() %></td>
                    <td><%=board.get(i).getDate() %></td>
                </tr>
                	<%
                }
                
                %>
            </table>
            <hr id="hr2">
            <form>
            <input type="hidden" value="">
            <input type="button" value="글 작성" onclick="location.href='service'">
            <input type="hidden" name="command" value="boardWriteForm">
            <input type="button" id="boardList-list" onclick="location.href='boardMain.jsp'" value="전체 목록">
            </form>
            <hr id="hr2">
        </main>
    </div>
</body>
</html>