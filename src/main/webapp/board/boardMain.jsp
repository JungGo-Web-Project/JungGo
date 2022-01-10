<%@page import="board.boardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="board.boardDAO"%>
<%@page import="utility.DBManager"%>
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
        main{

        }
        #hr1{
            margin-top: 30px;
            width: 80vw;
            border: thin solid black;
            margin-bottom: 30px;
        }
        #hr2{
            margin-top: 30px;
            width: 80vw;
            margin-bottom: 30px;
        }
        #sec1{
            display: flex;
            align-items: center;
        }
        h2{
            width: 200px;
        }
        #boardTable{
            width: 80vw;
            text-align: center;
            font-size: 1.3em;
        }
        #code{
            width: 10vw;
        }
        #title{
            width: 25vw;
        }
        #id{
            width: 10vw;
        }
        #date{
            width: 15vw;
        }
        #view{
            width: 10vw;
        }
        #boardWrite{
            margin-left: 75vw;
        }
        #num{
            text-align: center;
        }
        #boardMain-sec{
            margin-left: 15px;
            width: 18vw;
            height: 30vh;
            background-color: burlywood;
            text-align: center;
            font-size: 1.2em;
            cursor: pointer;
            border: solid 1px black;
        }
        .boardMain-main{
            display: grid;
            justify-content: center;
            align-items: center;
        }
        #boardMain-title{
            cursor: pointer;
        }
        
    </style>
    <title>main</title>
</head>
<body>
<%

boardDAO dao = boardDAO.getInstance();

ArrayList<boardDTO> board = dao.getBoard();

ArrayList<boardDTO> free = new ArrayList<boardDTO>();
ArrayList<boardDTO> after = new ArrayList<boardDTO>();
ArrayList<boardDTO> reque = new ArrayList<boardDTO>();

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
    <div>
        <main class="boardMain-main">
            <hr id="hr1">
            <table>
                <tr>
                    <th colspan="4"><h1 id="boardMain-title" onclick="location.href='boardList.jsp?list=1'">자유게시판</h1><br></th>
                </tr>
                <tr>
                    <td><section id="boardMain-sec" onclick="location.href='boardView.jsp?code=<%=free.get(free.size()-1).getCode() %>'">
                        <br><br>
                        <h1><%=free.get(free.size()-1).getTitle() %></h1>
                        <h3>작성자 : <%=free.get(free.size()-1).getId() %></h3>
                        <h3>작성일 : <%=free.get(free.size()-1).getDate() %></h3>
                        <h3>조회수 : <%=free.get(free.size()-1).getView() %></h3>
                    </section></td>
                    <td><section id="boardMain-sec" onclick="location.href='boardView.jsp?code=<%=free.get(free.size()-2).getCode() %>'">
                        <br><br>
                        <h1><%=free.get(free.size()-2).getTitle() %></h1>
                        <h3>작성자 : <%=free.get(free.size()-2).getId() %></h3>
                        <h3>작성일 : <%=free.get(free.size()-2).getDate() %></h3>
                        <h3>조회수 : <%=free.get(free.size()-2).getView() %></h3>
                    </section></td>
                    <td><section id="boardMain-sec" onclick="location.href='boardView.jsp?code=<%=free.get(free.size()-3).getCode() %>'">
                        <br><br>
                        <h1><%=free.get(free.size()-3).getTitle() %></h1>
                        <h3>작성자 : <%=free.get(free.size()-3).getId() %></h3>
                        <h3>작성일 : <%=free.get(free.size()-3).getDate() %></h3>
                        <h3>조회수 : <%=free.get(free.size()-3).getView() %></h3>
                    </section></td>
                    <td><section id="boardMain-sec" onclick="location.href='boardView.jsp?code=<%=free.get(free.size()-4).getCode() %>'">
                        <br><br>
                        <h1><%=free.get(free.size()-4).getTitle() %></h1>
                        <h3>작성자 : <%=free.get(free.size()-4).getId() %></h3>
                        <h3>작성일 : <%=free.get(free.size()-4).getDate() %></h3>
                        <h3>조회수 : <%=free.get(free.size()-4).getView() %></h3>
                    </section></td>
                </tr>
            </table>
            <hr id="hr2">
            <table>
                <tr>
                    <th colspan="4"><h1 id="boardMain-title" onclick="location.href='boardList.jsp?list=2'">구매 후기</h1><br></th>
                </tr>
                <tr>
                    <td><section id="boardMain-sec" onclick="location.href='boardView.jsp?code=<%=after.get(after.size()-1).getCode() %>'">
                        <br><br>
                        <h1><%=after.get(after.size()-1).getTitle() %></h1>
                        <h3>작성자 : <%=after.get(after.size()-1).getId() %></h3>
                        <h3>작성일 : <%=after.get(after.size()-1).getDate() %></h3>
                        <h3>조회수 : <%=after.get(after.size()-1).getView() %></h3>
                    </section></td>
                    <td><section id="boardMain-sec" onclick="location.href='boardView.jsp?code=<%=after.get(after.size()-2).getCode() %>'">
                        <br><br>
                        <h1><%=after.get(after.size()-2).getTitle() %></h1>
                        <h3>작성자 : <%=after.get(free.size()-2).getId() %></h3>
                        <h3>작성일 : <%=after.get(free.size()-2).getDate() %></h3>
                        <h3>조회수 : <%=after.get(free.size()-2).getView() %></h3>
                    </section></td>
                    <td><section id="boardMain-sec" onclick="location.href='boardView.jsp?code=<%=after.get(after.size()-3).getCode() %>'">
                        <br><br>
                        <h1><%=after.get(after.size()-3).getTitle() %></h1>
                        <h3>작성자 : <%=after.get(after.size()-3).getId() %></h3>
                        <h3>작성일 : <%=after.get(after.size()-3).getDate() %></h3>
                        <h3>조회수 : <%=after.get(after.size()-3).getView() %></h3>
                    </section></td>
                    <td><section id="boardMain-sec" onclick="location.href='boardView.jsp?code=<%=after.get(after.size()-4).getCode() %>'">
                        <br><br>
                        <h1><%=after.get(after.size()-4).getTitle() %></h1>
                        <h3>작성자 : <%=after.get(after.size()-4).getId() %></h3>
                        <h3>작성일 : <%=after.get(after.size()-4).getDate() %></h3>
                        <h3>조회수 : <%=after.get(after.size()-4).getView() %></h3>
                    </section></td>
                </tr>
            </table>
            <hr id="hr2">
            <table>
                <tr>
                    <th colspan="4"><h1 id="boardMain-title" onclick="location.href='boardList.jsp?list=3'">판매 요청</h1><br></th>
                </tr>
                <tr>
                    <td><section id="boardMain-sec" onclick="location.href='boardView.jsp?code=<%=reque.get(reque.size()-1).getCode() %>'">
                        <br><br>
                        <h1><%=reque.get(reque.size()-1).getTitle() %></h1>
                        <h3>작성자 : <%=reque.get(reque.size()-1).getId() %></h3>
                        <h3>작성일 : <%=reque.get(reque.size()-1).getDate() %></h3>
                        <h3>조회수 : <%=reque.get(reque.size()-1).getView() %></h3>
                    </section></td>
                    <td><section id="boardMain-sec" onclick="location.href='boardView.jsp?code=<%=reque.get(reque.size()-2).getCode() %>'">
                        <br><br>
                        <h1><%=reque.get(reque.size()-2).getTitle() %></h1>
                        <h3>작성자 : <%=reque.get(reque.size()-2).getId() %></h3>
                        <h3>작성일 : <%=reque.get(reque.size()-2).getDate() %></h3>
                        <h3>조회수 : <%=reque.get(reque.size()-2).getView() %></h3>
                    </section></td>
                    <td><section id="boardMain-sec" onclick="location.href='boardView.jsp?code=<%=reque.get(reque.size()-3).getCode() %>'">
                        <br><br>
                        <h1><%=reque.get(reque.size()-3).getTitle() %></h1>
                        <h3>작성자 : <%=reque.get(reque.size()-3).getId() %></h3>
                        <h3>작성일 : <%=reque.get(reque.size()-3).getDate() %></h3>
                        <h3>조회수 : <%=reque.get(reque.size()-3).getView() %></h3>
                    </section></td>
                    <td><section id="boardMain-sec" onclick="location.href='boardView.jsp?code=<%=reque.get(reque.size()-4).getCode() %>'">
                        <br><br>
                        <h1><%=reque.get(reque.size()-4).getTitle() %></h1>
                        <h3>작성자 : <%=reque.get(reque.size()-4).getId() %></h3>
                        <h3>작성일 : <%=reque.get(reque.size()-4).getDate() %></h3>
                        <h3>조회수 : <%=reque.get(reque.size()-4).getView() %></h3>
                    </section></td>
                </tr>
            </table>
            <hr id="hr2">
        </main>
    </div>
</body>
</html>