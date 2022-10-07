create database SpringMVCHW


GO

use SpringMVCHW;

create table member(
    id int not null IDENTITY(1,1),
    account varchar(50),
	password varchar(50),
    nickname nvarchar(50),
    email nvarchar(100),
    photo varbinary(MAX),
    create_at date default getDate()
)

drop table member;

select * from member;

insert into member(account, password, nickname, email) values('AAA', '0000', 'aaa', 'a@gmail.com');
insert into member(account, password, nickname, email) values('BBB', '0000', 'bbb', 'b@gmail.com');
insert into member(account, password, nickname, email) values('CCC', '0000', 'ccc', 'c@gmail.com');


