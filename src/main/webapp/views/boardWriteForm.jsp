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
<%
request.setCharacterEncoding("utf-8");

String id = "";
String cate = request.getParameter("category");

if(session.getAttribute("log") == null){
	request.getRequestDispatcher("main?center=login").forward(request, response);
}
else{
	id=session.getAttribute("log").toString();
}

%>
    <div class="boardWriteForm-div">
            <h1 id="boardWriteForm-h1" ><%=cate %> 글 작성</h1>
            <hr id="boardWriteForm-hr1">
            <form id="boardWriteForm-form" method="post" action="service">
                <section id="boardWriteForm-sec1">
                    <h2 id="boardWriteForm-h2">제목</h2>
                    <input id="boardWriteForm-title" name="title" type="text" required>
                </section>
                <hr id="boardWriteForm-hr2">
                <section id="boardWriteForm-sec1">
                    <h2 id="boardWriteForm-h2">내용</h2>
                    <textarea name="content" id="boardWriteForm-textarea" cols="30" rows="10"></textarea>
                </section>
                <hr id="boardWriteForm-hr2">
                <section id="boardWriteForm-sec1">
                    <h2 id="boardWriteForm-h2">비밀번호</h2>
                    <input id="boardWriteForm-password" name="password" type="password" required>
                </section>
                <hr id="boardWriteForm-hr2">
                <input type="hidden" name="id" value="<%=id %>">
                <input type="hidden" name="category" value="<%=cate %>">
                <input type="hidden" name="command" value="boardWriteForm">
                <input id="boardWriteForm-submit" type="submit" value="확인">
            </form>
    </div>
</body>
</html>