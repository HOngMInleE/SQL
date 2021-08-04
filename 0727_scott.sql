drop table member;

create table member(
    name varchar2(30),
    userid varchar2(30),
    pwd VARCHAR2(20),
    email varchar2(30),
    phone char(13),
    admin number(1)
);

select * from member;

insert into member values ('ÀÌ¼Ò¹Ì','somi','1234','gmd@naver.com','010-765-5412',0);
insert into member values ('ÇÏ»óÈ£','san12','1234','ha12@naver.com','010-123-1234',0);
insert into member values ('±èÀ±½Â','light','1234','youn1004@naver.com','010-123-1234',0);

delete member where name='Makima';

drop table member;

commit;

