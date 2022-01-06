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
            <h1>게시글 작성</h1>
            <hr id="hr1">
            <form>
                <section id="sec1">
                    <h2>제목</h2>
                    <input type="text" required>
                </section>
                <hr id="hr2">
                <section id="sec1">
                    <h2>내용</h2>
                    <textarea name="" id="" cols="30" rows="10"></textarea>
                </section>
                <hr id="hr2">
                <section id="sec1">
                    <h2>비밀번호</h2>
                    <input type="password" required>
                </section>
                <hr id="hr2">
                <input type="submit" value="확인">
            </form>
        </main>
        <footer>
            footer
        </footer>
    </div>
</body>
</html>