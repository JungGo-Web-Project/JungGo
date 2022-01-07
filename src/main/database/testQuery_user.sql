create database JungGo_test;
-- 먼저 test database 만들어서 진행했습니다! 구현 마치면 JungGoDB로 옮길게요! 

use JungGo_test;
create table users(
	code integer primary key auto_increment,
    id varchar(20) not null,
    pw varchar(20) not null,
    name varchar(20) not null,
    phone varchar(30) not null,
    address varchar(100) not null
);
-- 데이터 간소화를 위해서 닉네임은 제외했습니다
 
insert into users(id, pw, name, phone, address) values("qwer","1234","홍길동","01012341234","서울시 강남구");

select * from users;