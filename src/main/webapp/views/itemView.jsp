<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/itemView.css" type="text/css">
    <title>main</title>
</head>
<body>
    <div class="itemView-div">
        <section id="itemView-sec1">
            <img id="itemView-img" src="">
            <table id="itemView-table">
                <tr>
                    <th><h1 id="itemView-h1">PC팝니다</h1></th>
                </tr>
                <tr>
                    <td>
                        <h2 id="itemView-h2">1,000,000원</h2>
                        <hr id="itemView-hr">
                    </td>
                </tr>
                <tr>
                    <td><h3 id="itemView-h3">ㆍ조회수&nbsp;&nbsp; 1회</h3></td>
                </tr>
                <tr>
                    <td><h3 id="itemView-h3">ㆍ상품상태 중고상품</h3></td>
                </tr>
                <tr>
                    <td><h3 id="itemView-h3">ㆍ교환여부 교환불가</h3></td>
                </tr>
                <tr>
                    <td><h3 id="itemView-h3">ㆍ거래지역 경기도 고양시</h3></td>
                </tr>
                <tr>
                    <td>
                        <input id="itemView-btn1" type="button" value="찜하기">
                        <input id="itemView-btn2" type="button" value="구매하기">
                    </td>
                </tr>
            </table>
        </section>
        <section id="itemView-sec2">
            <h3 id="itemView-h3">상품정보</h3>
            <hr id="itemView-hr">
            <p id="itemView-p">성능좋은 PC 입니다.</p>
        </section>
    </div>
</body>
</html>