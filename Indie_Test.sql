 -----------------board Test--------------------
  select * from board order by b_num desc;

insert into board values((SELECT NVL(MAX(board.b_num),0)+1 FROM BOARD),
'concert_1.jgp',
'magazine',
'Drake와 Migos의 합동 투어가 시작된다',
'올해의할 것이라고 어떨까요?',
1,to_timestamp('2021-09-14','yyyy-mm-dd'),to_timestamp('2021-09-14','yyyy-mm-dd'));
  
  select * from board where b_category = 'news' order by b_regDate asc;
  
 update board set b_readCnt = b_readCnt + 1 where b_num = 2;

  select DISTINCT b_category from board;
      
  create or replace view playlist_view as
  select m_id,pl_title
  from playlist;
  
  drop table board;

  commit;
  
  -----------------playlist Test--------------------
  
  select * from playlist;
  commit;
  rollback;
  drop table playlist;
  
  select * from music where music.m_id in (select m_id from "test_1");
  
  insert into playlist values((SELECT NVL(MAX(playlist.pl_num), 0)+1 FROM playlist),'user','title',to_timestamp(sysdate, 'YYYY-MM-DD'));
  
  CREATE TABLE "1_1"
   	("PL_NUM" NUMBER(8,2),
    "M_ID" NUMBER(8,2));
  
  select count(*) from "user_한글이 최고야_12";
  select * from "user_12";
  insert into "1_1" values(1,'1');
  drop table "user_12";
  
  select * from music where music.m_id in (select m_id from "user_12");
  
 delete "test_1" where m_id = 1;
  
  CREATE OR REPLACE FORCE VIEW plylst_456 ("MB_ID") AS 
  select MB_ID
 from MEMBER;
    
  select * from plylst_456;
      
insert into plylst_456("MB_ID") values ('5'); 
drop view plylst_456;
  
  
  insert into playlist values((SELECT NVL(MAX(pl_num), 0)+1 FROM playlist),'123','title',to_timestamp(sysdate, 'YYYY-MM-DD'));
rollback;
commit;

select pl_num from playlist order by pl_num desc;

select max(pl_num) from playlist;

create table "test_5" ("PL_NUM" NUMBER(8,2),"M_id" NUMBER(8,2));
  -----------music Test --------------------------
select * from music;
drop table music;
commit; 

-----------member Test --------------------------
drop table member;
  commit;
  select * from member;
  
  -----------amdin Test --------------------------
  drop table member;
  commit;
  select * from member;