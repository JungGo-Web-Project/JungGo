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
        .boardCheck-div{
            display: grid;
            justify-content: center;
        }
        #boardCheck-form{
            margin-top: 30vh;
            width: 300px;
            height: 200px;
            border: solid black 1px;
            display: grid;
            justify-content: center;
        }
        #boardCheck-pw{
            margin-top: 30px;
            width: 200px;
            height: 50px;
            font-size: 2em;
        }
        #boardCheck-submit{
            margin-left: 25px;
            width: 150px;
            height: 50px;
            font-size: 1.5em;
            color: white;
            background-color: black;
        }
    </style>
    <title>main</title>
</head>
<body>
    <div class="boardCheck-div">
    <%
    int code = Integer.parseInt(request.getParameter("code"));
    
    if(code == 1){ // 수정시에 id, pw 체크
    	%><form id="boardCheck-form" method="post" action="boardUpdate"><%
    }
    else{ // 삭제시에 id, pw 체크
    	%><form id="boardCheck-form" method="post" action="boardDelete"><%
    }
    %>
            <input type="hidden" name="id" value="" >
            <input type="hidden" name="code" value="" >
            <input id="boardCheck-pw" type="password" name="pw">
            <input id="boardCheck-submit" type="submit" value="확인">
        </form>
    </div>
</body>
</html>