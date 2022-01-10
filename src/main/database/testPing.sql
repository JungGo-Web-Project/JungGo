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