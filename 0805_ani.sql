create table movie(
    code NUMBER(4), --영화코드
    title varchar2(50), -- 영화제목
    price number(10), -- 가격
    director varchar2(20), -- 감독
    actor varchar2(20),  -- 출연배우
    poster varchar2(100), -- 포스터
    synopsis varchar2(3000), -- 설명
    PRIMARY KEY (code)
);

commit;

create sequence movie_seq 
start with 1
increment by 1;

insert into movie values(movie_seq.nextval, 'Test1', 1111, 'Test1', 'Test1', 'Test1', '테스트 중입니다.'); 

select * from movie;