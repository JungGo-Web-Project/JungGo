<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../resource/css/boardUpdateForm.css" type="text/css">
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
            <h1>게시글 수정</h1>
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
                <input type="submit" value="수정">
                <button onclick="">삭제</button>
            </form>
        </main>
        <footer>
            footer
        </footer>
    </div>
</body>
</html>