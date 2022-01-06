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
        #ad{
            height: 40vh;
            background-color: violet;
            text-align: center;
            font-size: 10em;
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
        td{
            width: 300px;
            height: 200px;
            background-color: cornflowerblue;
            text-align: center;
            font-size: 5em;
            color: white;
        }
        th{
            text-align: left;
            font-size: 2em;
        }
        table{
            margin-top: 50px;
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
            <section id="ad">
                ad
            </section>
            <table>
                <tr>
                    <th colspan="3">최신글</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>4</td>
                </tr>
            </table>
            <table>
                <tr>
                    <th colspan="3">자유게시판</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>4</td>
                </tr>
            </table>
            <table>
                <tr>
                    <th colspan="3">상품후기</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>4</td>
                </tr>
            </table>
            <table>
                <tr>
                    <th colspan="3">상품요청</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>4</td>
                </tr>
            </table>
        </main>
        <footer>
            footer
        </footer>
    </div>
</body>
</html>