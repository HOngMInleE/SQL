create table member (
    name varchar2(10),
    userid varchar2(10),
    pwd varchar2(10),
    email varchar2(20),
    phone char(13),
    admin number(1) default 0, --0:»ç¿ëÀÚ, 1:°ü¸®ÀÚ
    primary key(userid)
);

insert into member VALUES('ÀÌ¼Ò¹Ì','somi','1234','g@naver.com','010-2362-5157',0);
insert into member values('ÇÏ»ó¿À', 'sang12', '1234', 'ha12@naver.com','010-5629-8888',1);
insert into member values('±èÀ±½Â', 'light', '1234', 'yoon@gmail.com','010-9999-8282',0);

--DROP TABLE member;

commit;

select * from member;

update member
set phone = '010-123-4567'
where userid = 'somi';

commit;

delete member where userid='somi';

select*from member;

rollback;

select*from member;

drop table student;

create table student(
    num number,
    name varchar2(10),
    primary key(num)
);

select *
from student;

insert into student
values(1,'È«±æµ¿');

insert into student
values(2,'È«±æµ¿');

update student
set name='±è±æµ¿'
where num=2;

insert into student
values(3,'°í±æµ¿');

insert into student 
values(4,'±èÃ¶¼ö');

insert into student
values(5,'½ÅÂ¯±¸');

insert into student 
values(6,'denji');

select *
from student;