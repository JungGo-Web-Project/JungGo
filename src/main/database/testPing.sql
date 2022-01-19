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
insert into category (category, img) values('디지털기기', 'img-01.jpg');
insert into category (category, img) values('생활가전', 'img-02.jpg');
insert into category (category, img) values('남성/여성의류', 'img-03.jpg');
insert into category (category, img) values('가구/인테리어', 'img-04.jpg');
insert into category (category, img) values('스포츠용품', 'img-05.jpg');
insert into category (category, img) values('서적/음반', 'img-06.jpg');
insert into category (category, img) values('기타', 'img-07.jpg');


create table JungGo_test.items(
	code integer primary key auto_increment,
	category integer default 0,
    title varchar(200),
    address varchar(1000),
    content varchar(2000),
    sellerId varchar(20),
    buyerId varchar(20),
	status varchar(20),
	option1 varchar(20),
	option2 varchar(20),
	num integer default 1,
	price integer default 0,
    view integer default 0,
    date datetime not null default current_timestamp,
    image_path varchar(1000)
)

insert into items (category, title, address, content, sellerId, status, option1, option2, num, price, date, image_path) values(1,'PC 팝니다','서울시 금천구', '성능좋은 PC 입니다.', 'qwer', '판매중', '중고상품', '교환불가', 1, 1000000, current_timestamp(), 'http://image.auction.co.kr/itemimage/1f/ce/c0/1fcec0bd86.jpg');
insert into items (category, title, address, content, sellerId, status, option1, option2, num, price, date, image_path) values(2,'냉장고 팝니다','서울시 금천구', '4인가족용 냉장고 입니다.', 'qwer', '판매중', '새상품', '교환불가', 1, 500000, current_timestamp(), 'http://newsimg.hankookilbo.com/2019/07/11/201907112380766492_29.jpg');
insert into items (category, title, address, content, sellerId, status, option1, option2, num, price, date, image_path) values(3,'잠옷 팝니다','서울시 금천구', '착용감이 좋은 잠옷 입니다.', 'qwer', '판매중', '중고상품', '교환불가', 1, 10000, current_timestamp(), 'https://image.msscdn.net/images/goods_img/20210503/1934950/1934950_7_500.jpg');
insert into items (category, title, address, content, sellerId, status, option1, option2, num, price, date, image_path) values(4,'의자 팝니다','서울시 금천구', '편안한 의자 입니다.', 'qwer', '판매중', '중고상품', '교환불가', 2, 50000, current_timestamp(), 'https://www.costco.co.kr/medias/sys_master/images/hc9/h7d/11927736483870.jpg');
insert into items (category, title, address, content, sellerId, status, option1, option2, num, price, date, image_path) values(5,'아령 팝니다','서울시 금천구', '운동할때 쓰는 아령입니다.', 'qwer', '판매중', '새상품', '교환가능', 4, 1000, current_timestamp(), 'http://img.danawa.com/prod_img/500000/359/124/img/4124359_1.jpg?shrink=330:330&_v=20210112165942');
insert into items (category, title, address, content, sellerId, status, option1, option2, num, price, date, image_path) values(6,'요리책 팝니다','서울시 금천구', '유명한 요리사의 책입니다.', 'qwer', '판매중', '중고상품', '교환불가', 1, 5000, current_timestamp(), 'https://file.mk.co.kr/meet/neds/2015/03/image_readtop_2015_263284_14267650501823265.jpg');
insert into items (category, title, address, content, sellerId, status, option1, option2, num, price, date, image_path) values(7,'김치 팝니다','서울시 금천구', '작년에 갓 담근 김치입니다.', 'qwer', '판매중', '새상품', '교환가능', 1, 20000, current_timestamp(), 'http://ccimg.hellomarket.com/images/2019/item/01/03/15/5633_3803110_1.jpg?size=s6');


create table JungGo_test.comment(
	code integer primary key auto_increment,
    itemCode integer,
    buyerId varchar(200),
    content varchar(2000),
    date datetime not null default current_timestamp
)

create table JungGo_test.zzim(
	code integer primary key auto_increment,
    itemCode integer,
    buyerId varchar(200)
)