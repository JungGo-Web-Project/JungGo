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
            <h1>기본정보</h1>
            <hr id="hr1">
            <form>
                <section id="sec1">
                    <h2>상품이미지</h2>
                </section>
                <hr id="hr2">
                <section id="sec1">
                    <h2>제목</h2>
                    <input type="text" required>
                </section>
                <hr id="hr2">
                <section id="sec1">
                    <h2>카테고리</h2>
                    <select>
                        <option>여성의류</option>
                        <option>남성의류</option>
                    </select>
                    <select>
                        <option>패딩/점퍼</option>
                        <option>코트</option>
                    </select>
                    <select>
                        <option>롱패딩</option>
                        <option>숏패딩</option>
                    </select>
                </section>
                <hr id="hr2">
                <section id="sec1">
                    <h2>거래지역</h2>
                    <button>내 위치</button>
                    <input type="text">
                </section>
                <hr id="hr2">
                <section id="sec1">
                    <h2>상태</h2>
                    <input type="radio" name="상태" value="중고상품" checked><span>중고상품</span><br>
                    <input type="radio" name="상태" value="새상품"><span>새상품</span><br>
                </section>
                <hr id="hr2">
                <section id="sec1">
                    <h2>교환</h2>
                    <input type="radio" name="교환" value="불가" checked><span>교환불가</span><br>
                    <input type="radio" name="교환" value="가능"><span>교환가능</span><br>
                </section>
                <hr id="hr2">
                <section id="sec1">
                    <h2>가격</h2>
                    <input type="number" required>
                </section>
                <hr id="hr2">
                <section id="sec1">
                    <h2>설명</h2>
                    <textarea name="" id="" cols="30" rows="10"></textarea>
                    <p>0/2000</p>
                </section>
                <hr id="hr2">
                <section id="sec1">
                    <h2>수량</h2>
                    <input type="number" value="1" required>
                </section>
                <hr id="hr2">
                <input type="submit" value="등록하기">
            </form>
        </main>
        <footer>
            footer
        </footer>
    </div>
</body>
</html>