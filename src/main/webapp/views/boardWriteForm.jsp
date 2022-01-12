<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/boardWriteForm.css" type="text/css">
    <title>main</title>
</head>
<body>
    <div>
        <main>
            <h1>게시글 작성</h1>
            <hr id="hr1">
            <form method="post" action="">
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
    </div>
</body>
</html>