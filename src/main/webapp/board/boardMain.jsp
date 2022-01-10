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
        header{
            height: 20vh;
        }
        .top{
            height: 15vh;
            background-color: burlywood;
            text-align: center;
            font-size: 5em;
            color: white;
        }
        main{

        }
        footer{
            margin-top: 50px;
            height: 50vh;
            text-align: center;
            font-size: 10em;
            background-color: black;
            color: white;
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





%>
    <div>
        <header>
            <h1>title</h1>
            <section class="top">
                top
            </section>
        </header>
        <main class="boardMain-main">
            <hr id="hr1">
            <table>
                <tr>
                    <th colspan="4"><h1 id="boardMain-title" onclick="">자유게시판</h1><br></th>
                </tr>
                <tr>
                    <td><section id="boardMain-sec" onclick="">
                        <br><br>
                        <h1>title</h1>
                        <h3>작성자 : id</h3>
                        <h3>작성일 : 2022-01-09</h3>
                        <h3>조회수 : 0</h3>
                    </section></td>
                    <td><section id="boardMain-sec" onclick="">
                        <br><br>
                        <h1>title</h1>
                        <h3>작성자 : id</h3>
                        <h3>작성일 : 2022-01-09</h3>
                        <h3>조회수 : 0</h3>
                    </section></td>
                    <td><section id="boardMain-sec" onclick="">
                        <br><br>
                        <h1>title</h1>
                        <h3>작성자 : id</h3>
                        <h3>작성일 : 2022-01-09</h3>
                        <h3>조회수 : 0</h3>
                    </section></td>
                    <td><section id="boardMain-sec" onclick="">
                        <br><br>
                        <h1>title</h1>
                        <h3>작성자 : id</h3>
                        <h3>작성일 : 2022-01-09</h3>
                        <h3>조회수 : 0</h3>
                    </section></td>
                </tr>
            </table>
            <hr id="hr2">
            <table>
                <tr>
                    <th colspan="4"><h1 id="boardMain-title" onclick="">구매 후기</h1><br></th>
                </tr>
                <tr>
                    <td><section id="boardMain-sec" onclick="">
                        <br><br>
                        <h1>title</h1>
                        <h3>작성자 : id</h3>
                        <h3>작성일 : 2022-01-09</h3>
                        <h3>조회수 : 0</h3>
                    </section></td>
                    <td><section id="boardMain-sec" onclick="">
                        <br><br>
                        <h1>title</h1>
                        <h3>작성자 : id</h3>
                        <h3>작성일 : 2022-01-09</h3>
                        <h3>조회수 : 0</h3>
                    </section></td>
                    <td><section id="boardMain-sec" onclick="">
                        <br><br>
                        <h1>title</h1>
                        <h3>작성자 : id</h3>
                        <h3>작성일 : 2022-01-09</h3>
                        <h3>조회수 : 0</h3>
                    </section></td>
                    <td><section id="boardMain-sec" onclick="">
                        <br><br>
                        <h1>title</h1>
                        <h3>작성자 : id</h3>
                        <h3>작성일 : 2022-01-09</h3>
                        <h3>조회수 : 0</h3>
                    </section></td>
                </tr>
            </table>
            <hr id="hr2">
            <table>
                <tr>
                    <th colspan="4"><h1 id="boardMain-title" onclick="">판매 요청</h1><br></th>
                </tr>
                <tr>
                    <td><section id="boardMain-sec" onclick="">
                        <br><br>
                        <h1>title</h1>
                        <h3>작성자 : id</h3>
                        <h3>작성일 : 2022-01-09</h3>
                        <h3>조회수 : 0</h3>
                    </section></td>
                    <td><section id="boardMain-sec" onclick="">
                        <br><br>
                        <h1>title</h1>
                        <h3>작성자 : id</h3>
                        <h3>작성일 : 2022-01-09</h3>
                        <h3>조회수 : 0</h3>
                    </section></td>
                    <td><section id="boardMain-sec" onclick="">
                        <br><br>
                        <h1>title</h1>
                        <h3>작성자 : id</h3>
                        <h3>작성일 : 2022-01-09</h3>
                        <h3>조회수 : 0</h3>
                    </section></td>
                    <td><section id="boardMain-sec" onclick="">
                        <br><br>
                        <h1>title</h1>
                        <h3>작성자 : id</h3>
                        <h3>작성일 : 2022-01-09</h3>
                        <h3>조회수 : 0</h3>
                    </section></td>
                </tr>
            </table>
            <hr id="hr2">
        </main>
        <footer>
            footer
        </footer>
    </div>
</body>
</html>