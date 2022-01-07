create database JungGoServer;

create table JungGoServer.board(
	code integer primary key auto_increment,
    title varchar(200),
    content varchar(5000),
    id varchar(20),
	passward varchar(20),
    view integer default 0,
    date datetime not null default current_timestamp
)

use JungGoServer;

insert into board (title, content, id, password, date) values('테스트', '테스트용 입니다.', 'qwer', '1234', current_timestamp());