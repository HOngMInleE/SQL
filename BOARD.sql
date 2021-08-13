CREATE TABLE BOARD(
	BOARD_NUM NUMBER,
	BOARD_NAME VARCHAR2(20),
	BOARD_PASS VARCHAR2(15),
	BOARD_SUBJECT VARCHAR2(50),
	BOARD_CONTENT VARCHAR2(2000),
	BOARD_FILE VARCHAR2(50),
	BOARD_READCOUNT NUMBER,
	BOARD_DATE DATE,
	PRIMARY KEY(BOARD_NUM)
);

drop table board;

commit;

select * from board;

insert into board values(1, 'makima', '1111', 'domination', 'heroine', 'D&M.jpeg',0, TO_DATE(SYSDATE));