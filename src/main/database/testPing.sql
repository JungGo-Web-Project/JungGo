create database JungGo_test;

create table JungGo_test.board(
	code integer primary key auto_increment,
	category varchar(200),
    title varchar(200),
    content varchar(5000),
    id varchar(20),
	passward varchar(20),
    view integer default 0,
    date datetime not null default current_timestamp
)

use JungGo_test;

insert into board (category, title, content, id, password, date) values('자유게시판','테스트', '테스트용 입니다.', 'qwer', '1234', current_timestamp());


create table JungGo_test.category(
	code integer primary key auto_increment,
	category varchar(200),
    img varchar(200),
)
insert into category (category, img) values('디지털기기', 'img-01.jsp');
insert into category (category, img) values('생활가전', 'img-02.jsp');
insert into category (category, img) values('남성/여성의류', 'img-03.jsp');
insert into category (category, img) values('가구/인테리어', 'img-04.jsp');
insert into category (category, img) values('스포츠용품', 'img-05.jsp');
insert into category (category, img) values('서적/음반', 'img-06.jsp');
insert into category (category, img) values('기타', 'img-07.jsp');


create table JungGo_test.items(
	code integer primary key auto_increment,
	category varchar(200),
    title varchar(200),
    content varchar(2000),
    sellerId varchar(20),
    buyerId varchar(20),
	status varchar(20),
	option1 varchar(20),
	option2 varchar(20),
	num integer default 1,
	price integer default 0,
    view integer default 0,
    date datetime not null default current_timestamp
)

insert into items (category, title, content, sellerId, status, option1, option2, num, price, date) values('디지털기기','PC팝니다', '성능좋은 PC 입니다.', 'qwer', '판매중', '중고상품', '교환불가', 1, 1000000, current_timestamp());
insert into items (category, title, content, sellerId, status, option1, option2, num, price, date) values('생활가전','냉장고 팝니다', '4인가족용 냉장고 입니다.', 'qwer', '판매중', '새상품', '교환불가', 1, 500000, current_timestamp());
insert into items (category, title, content, sellerId, status, option1, option2, num, price, date) values('남성/여성의류','잠옷', '착용감이 좋은 잠옷 입니다.', 'qwer', '판매중', '중고상품', '교환불가', 1, 10000, current_timestamp());
insert into items (category, title, content, sellerId, status, option1, option2, num, price, date) values('가구/인테리어','의자', '편안한 의자 입니다.', 'qwer', '판매중', '중고상품', '교환불가', 2, 50000, current_timestamp());
insert into items (category, title, content, sellerId, status, option1, option2, num, price, date) values('스포츠용품','아령', '운동할때 쓰는 아령입니다.', 'qwer', '판매중', '새상품', '교환가능', 4, 1000, current_timestamp());
insert into items (category, title, content, sellerId, status, option1, option2, num, price, date) values('서적/음반','요리책', '유명한 요리사의 책입니다.', 'qwer', '판매중', '중고상품', '교환불가', 1, 5000, current_timestamp());
insert into items (category, title, content, sellerId, status, option1, option2, num, price, date) values('기타','김치', '작년에 갓 담근 김치입니다.', 'qwer', '판매중', '새상품', '교환가능', 1, 20000, current_timestamp());
