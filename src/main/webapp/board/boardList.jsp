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
    </style>
    <title>main</title>
</head>
<body>
    <div>
        <header>
            <h1>title</h1>
            <section class="top">
                top
            </section>
        </header>
        <main>
            <h1>자유게시판</h1>
            <hr id="hr1">
            <table border="1">
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                    <th>조회수</th>
                    <th>추천수</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>1111</td>
                    <td>qwer</td>
                    <td>2022-01-06</td>
                    <td>2</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>2222</td>
                    <td>qwer</td>
                    <td>2022-01-06</td>
                    <td>2</td>
                    <td>0</td>
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