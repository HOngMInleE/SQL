create table board(
    num number(5) primary key, 
    pass varchar2(30),
    name varchar2(30),
    email varchar2(30),
    title varchar2(50),
    content varchar2(1000),
    readcount number(4) default 0, 
    writedate date default sysdate
);

create sequence board_seq 
increment by 1
start with 1
nocache
;

insert into board (num, name, email, pass, title, content)
values(board_seq.nextval, '성윤정', 'pinksung@nate.com', '1234', '첫방문', '반갑습니다.');
insert into board (num, name, email, pass, title, content)
values(board_seq.nextval, 'makima', 'makima@naver.com', '1234', 'Heroine', 'hi');
insert into board (num, name, email, pass, title, content)
values(board_seq.nextval, 'denji', 'denji@nate.com', '1234', 'Pochita', 'hungry.');
insert into board (num, name, email, pass, title, content)
values(board_seq.nextval, 'power', 'power@nate.com', '1234', 'wang', 'blood.');

select * from board order by num desc;

commit;

rollback;

delete board where name = '0810';

drop sequence board_seq;

drop table board;