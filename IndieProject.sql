-----------------board--------------------
CREATE TABLE "BOARD" 
   ("B_NUM" NUMBER(8,0) NOT NULL ENABLE, 
	"B_PICTURE" VARCHAR2(300 BYTE) NOT NULL ENABLE, 
    "B_CATEGORY" VARCHAR2(20 BYTE) NOT NULL ENABLE,
	"B_TITLE" VARCHAR2(2000 BYTE) NOT NULL ENABLE, 
	"B_CONTENT" long not null enable,
	"B_READCNT" NUMBER(8,0) DEFAULT 0 NOT NULL ENABLE, 
	"B_REGDATE" TIMESTAMP (6) DEFAULT SYSDATE NOT NULL ENABLE, 
	"B_UPDATE" TIMESTAMP (6) DEFAULT SYSDATE NOT NULL ENABLE, 
	 CONSTRAINT "BOARD_PK" PRIMARY KEY ("B_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
  
  -----------------board Test--------------------
  select * from board order by b_num desc;
  commit;

insert into board values((SELECT NVL(MAX(board.b_num),0)+1 FROM BOARD),
'concert_1.jgp',
'magazine',
'Drake�� Migos�� �յ� ��� ���۵ȴ�',
'������ ��ȸ�� ��ġ�� �ٽ� ���ϱ� ������� ��û�� ���ξ��� ���� �ܼ�Ʈ�� ź���߽��ϴ�. �� ���վ� �ְ��� �ְ��� �޸��� �ִ� ���ۿ� �׷��� �����µ���. �ٷ� Drake�� Migos�� <Aubrey and the Three Amigos>��� �̸��� ��� ������ ���̶�� �մϴ�. <Aubrey and the Three Amigos> ����� ���� 7�� ��Ʈ����ũ ��Ƽ���� ���۵Ǿ�, �ټ� �ް��� ������ ������ �� 11���� ���� ���� �����̶�� �մϴ�. "Walk It Talk It"������ ������ ���� �ܼ�Ʈ���� ���� �� ���� ����ġ ���߽��ϴ�. ���� �̱��� �湮 �����̶��, <Aubrey and the Three Amigos> ���� ������ �����غ��� �� ����?',
1,to_timestamp('2021-09-14','yyyy-mm-dd'),to_timestamp('2021-09-14','yyyy-mm-dd'));


  
  
  
  
  
  
  select * from board order by b_regDate asc;
  select * from board where b_category = 'news' order by b_regDate asc;
  update board set b_category='1', b_title='1', b_content='1', b_update=SYSTIMESTAMP where b_num=2;
  delete board where b_num = 1;
 update board set b_readCnt = b_readCnt + 1 where b_num = 2;
  select DISTINCT b_category from board;
  
  commit; 
  
  drop table board;
  
  
  
  create or replace view playlist_view as
  select m_id,pl_title
  from playlist;
  
  -----------------playlist--------------------
  CREATE TABLE "PLAYLIST" 
   (	"PL_NUM" NUMBER(8,2) NOT NULL ENABLE, 
	"MB_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"PL_TITLE" VARCHAR2(40 BYTE) NOT NULL ENABLE, 
	"PL_INDATE" TIMESTAMP (6) DEFAULT SYSDATE NOT NULL ENABLE, 
	 CONSTRAINT "PLAYLIST_PK" PRIMARY KEY ("PL_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
  
  -----------------playlist Test--------------------
  
  select * from playlist;
  commit;
  rollback;
  drop table playlist;
  
  insert into playlist values((SELECT NVL(MAX(playlist.pl_num), 0)+1 FROM playlist),'user','title',to_timestamp(sysdate, 'YYYY-MM-DD'));
  
  
  CREATE TABLE "1_1"
   	("PL_NUM" NUMBER(8,2),
    "M_ID" NUMBER(8,2));
  
  select count(*) from "user_�ѱ��� �ְ��_12";
  select * from "user_12";
  insert into "1_1" values(1,'1');
  drop table "user_12";
  
  select * 
  from music
  where music.m_id in (select m_id from "user_12");
  
 delete "user_12" where m_id = 1;

  commit;
  
  CREATE OR REPLACE FORCE VIEW plylst_456 ("MB_ID") AS 
    select MB_ID
    from MEMBER;
      
      select * from plylst_456;
      
insert into plylst_456("MB_ID") values ('5'); 

drop view plylst_456;
  
    -----------music--------------------------

CREATE TABLE "MUSIC" 
   ("M_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"M_GENRE" VARCHAR2(20 BYTE), 
	"M_NATION" VARCHAR2(20 BYTE),
	"M_NAME" VARCHAR2(40 BYTE) NOT NULL ENABLE, 
	"M_ARTIST" VARCHAR2(40 BYTE) NOT NULL ENABLE, 
	"M_ALBUM" VARCHAR2(40 BYTE) NOT NULL ENABLE, 
	"M_ALBUM_PIC" VARCHAR2(40 BYTE), 
	"M_LYRICS" VARCHAR2(4000 BYTE), 
	"M_PLAYCNT" NUMBER(8,0), 
	"M_INDATE" TIMESTAMP (6) DEFAULT SYSDATE, 
	 CONSTRAINT "TABLE1_PK" PRIMARY KEY ("M_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

  -----------music insert --------------------------
insert into music values('1','bal','kor','name1','art1','alb1','bal1','����1',0,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('2','bal','kor','name2','art2','alb2','bal2','����2',1,to_timestamp('2021-09-06','yyyy-mm-dd'));
insert into music values('3','bal','for','name3','art3','alb3','bal11','����3',2,to_timestamp('2021-09-05','yyyy-mm-dd'));
insert into music values('4','bal','for','name4','art4','alb4','bal12','����4',3,to_timestamp('2021-09-04','yyyy-mm-dd'));
insert into music values('5','dan','kor','name5','art5','alb5','dan1','����5',5,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('6','dan','kor','name6','art6','alb6','dan2','����6',6,to_timestamp('2021-09-05','yyyy-mm-dd'));
insert into music values('7','dan','for','name7','art7','alb7','dan11','����7',7,to_timestamp('2021-09-03','yyyy-mm-dd'));
insert into music values('8','dan','for','name8','art8','alb8','dan12','����8',10,to_timestamp('2021-09-01','yyyy-mm-dd'));
insert into music values('9','hip','kor','name9','art9','alb9','hip1','����9',13,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('10','hip','kor','name10','art10','alb10','hip2','����10',15,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('11','hip','for','name11','art11','alb11','hip11','����11',19,to_timestamp('2021-09-06','yyyy-mm-dd'));
insert into music values('12','hip','for','name12','art12','alb12','hip12','����12',22,to_timestamp('2021-09-05','yyyy-mm-dd'));
insert into music values('13','in','kor','name13','art13','alb13','in1','����13',25,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('14','in','kor','name14','art14','alb14','in2','����14',29,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('15','in','for','name15','art15','alb15','in11','����15',31,to_timestamp('2021-09-05','yyyy-mm-dd'));
insert into music values('16','in','for','name16','art16','alb16','in12','����16',40,to_timestamp('2021-09-01','yyyy-mm-dd'));

-----------music Test --------------------------
select * from music;

commit; 

    -----------------member--------------------
    CREATE TABLE "MEMBER" 
   (	"MB_NUM" VARCHAR2(10 BYTE) NOT NULL ENABLE, 
	"MB_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"MB_PWD" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"MB_EMAIL" VARCHAR2(30 BYTE) NOT NULL ENABLE, 
	"MB_ZIPNUM" VARCHAR2(40 BYTE) NOT NULL ENABLE, 
	"MB_ADDRESS1" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"MB_ADDRESS2" VARCHAR2(100 BYTE), 
	"MB_MOBILE" VARCHAR2(13 BYTE) NOT NULL ENABLE, 
	"MB_INDATE" TIMESTAMP (6) DEFAULT SYSDATE NOT NULL ENABLE, 
	 CONSTRAINT "MEMBER_PK" PRIMARY KEY ("MB_NUM", "MB_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
  
  
  drop table member;
  
  commit;
  
  select * from member;
  -----------------admin--------------------
    CREATE TABLE "ADMIN" 
   (	"ADM_NUM" VARCHAR2(10 BYTE) NOT NULL ENABLE, 
	"ADM_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"ADM_PWD" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"ADM_EMAIL" VARCHAR2(30 BYTE) NOT NULL ENABLE, 
	"ADM_AUTH" NUMBER(3,0) DEFAULT 1 NOT NULL ENABLE, 
	 CONSTRAINT "ADMIN_PK" PRIMARY KEY ("ADM_NUM", "ADM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;