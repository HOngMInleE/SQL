create table board1 (
    seq number (5) primary key,
    title varchar2(200),
    writer varchar2(20),
    content varchar2(2000),
    regdate date default sysdate, 
    cnt number(5) default 0
);

COMMIT;

select * from board1 order by seq ASC;

drop table board1;

update board1
set title=?, content=?
where seq = ?;
