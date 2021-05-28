--DDL   / Data Definition Language      -- 데이터 정의 언어
--    create, drop, alter
--
--DML  / Data Manipulation Language    -- 데이터를 조작하는 언어
--    select, insert, update, delete 
--    
--DCL  / Data Control Language       -- 데이터 제어 언어
--    grant, revoke 
--    
--TCL  / Transaction Control Language   --  DCL 에서 트랜잭션을 제어하는 명령
--    commit, rollback

--문자 - char, varchar
--숫자 - number
--날짜 - date


create table emp01       -- table 만들기
(
    empno number(4),
    ename varchar(20),
    sal number(7,2)
);

select *
from emp01;

desc emp01;

create table empsub        -- 서브 퀴리로 만드는 방법 / 복사할 때 사용
as                         -- (emp) table 이랑 같은 구성의 table이 만들어짐
select * from emp;

desc empsub;  -- Describe / 특정 테이블에 어떤 컬럼이 있는지 조회하는 명령어

select *
from empsub;

create table emp03 
as 
select empno, ename
from emp;

desc emp03;

select * from emp03;

-- emp05 / 부서번호가 10번인 사원들
create table emp05
as
select *
from emp
where deptno = 10;

desc emp05;

select * from emp05;

create table emp06
as
select *
from emp
where 1 = 0;        -- 성립되는 조건없음 / 데이터를 가져오지 않음.

desc emp06;

select * from emp06;


--table 변경 방법           CHAR는 고정형 / VARCHAR는 가변형

----컬럼요소를 변경가능 추가 삭제 수정
--alter table emp01
--add(job varchar2(9));
--
----컬럼타입변경(이미 데이터를 가지고 있는 경우엔 안된다.)
--alter table emp01
--modify(job VARCHAR2(30));
--
----컬럽 삭제 (컬럼을 꼭 적어줘야 한다)
--alter table emp01
--drop column job;
--
----테이블 삭제
--drop table emp01;

select * from emp01;

select *
from emo02;

truncate table emp01;

truncate table emp02;   -- truncate : 컬럼은 놔두고 값(데이터)만 삭제

-- dictionary view      딕셔너리 뷰 - 내가한일에대한 내역을 볼 수 있다.
-- USER_xxxx (나의 계정만) 
-- ALL_xxxx (권한 위임 받은거)
-- DBA_xxxx (관리자 권한을 가진 계정만)
-- xxxx : 대상 

desc user_tables;

select table_name
from user_tables
order by table_name desc;

desc all_tables;

select owner, table_name
from all_tables
order by table_name desc;

desc dba_tables;

create table emp01
as 
select *
from emp
where 1 = 0;

desc emp01;

-- insert
    -- inser into table (columm) values (data)
insert into emp01(empno,ename,job,mgr,hiredate,sal,comm,deptno)
values (1111,'이홍민','학생',9999,sysdate,100,100,10);

select * from emp01;

insert into emp01   -- 모든 커럼에 데이터를 넣는다면 생략가능
values (1111,'이홍민','학생',9999,'1998-04-15',100,100,10);

insert into emp01 (empno, ename, sal)
values (24, '이홍민', 222);

-- transaction
commit;

select * from emp01;

select *
from dept;

desc dept;              -- deptno : not null / 절대로 값을 비워두면 안됨

insert into dept (dname, loc) 
values ('인사부', '서울');   -- 오류 발생 / deptno에 null 을 넣을 수 없음 


-- update
    -- update table   set 
update emp01 
set deptno = 40;    -- 모든 deptno 가 40으로 변경됨

select * 
from emp01;

update emp01
set deptno = 20;

rollback;

drop table emp01;

select * from emp01;

create table emp01
as 
select * from emp;

update emp01 
set deptno = 30
where deptno = 10;  -- deptno 가 10인 사람들의 deptno가 30으로 바뀜 / 
            -- 커맨드라인에서는 반영되지 않음 / 커밋하지 않음
commit;

update emp01
set sal = sal * 1.1, comm = 10000
where sal >= 3000;

select * from emp01;

-- 입사연도가 82년도인 사람의 입사일을 오늘 날짜로 바꿔보세요
update emp01 
set hiredate = sysdate
where substr(hiredate,1,2) = '82';  -- substr,문자함수 이요해서 
                        -- ''를 넣어야하지만 날짜에는 유연하게 표현됨
                        
-- delete
        -- truncate / 전체삭제 / rollaback 불가능 / 복구불가
        -- delete / 부분삭제 / rollback 가능 / 복구가능
delete from emp01;      -- 삭제되지않음 = 커밋하지않음

select * from emp01;
rollback;              -- 이전 커밋이 기준

delete 
from emp01
where deptno = 30;
commit;

create table dept01         -- 자동으로 commit 실행됨
as 
select * from dept;

delete from dept01;
select * from dept01;
rollback;   -- commit 된 때 / create 한 때로 이동 됨


-- 5대 제약조건  / column에 지정 / dictionary에 보내짐
    -- not null -> c        data 입력 필수 
    -- unique -> u          중복 불가, null 중복 허용
    -- primary key -> p     중복 불가, data 입력 필수 / 똑같은 값 중복 허용x 
    -- foreign key -> r     table 간의 제약조건 / reference
    -- check -> c           범위 설정 제약조건
    
desc dept;
desc emp;

--user_constraints

desc user_constraints;

select constraint_name, constraint_type, table_name
from user_constraints;  -- user안에 있는 제약조건이 있는 column이 모두 보임 

--관계를 알아보는 제약조건 방법
select *
from user_cons_columns; -- 확인하려면 user_constraints를 확인해야함
                                -- join 으로 동시에 확인 가능한지?
                                
desc user_cons_columns;

drop table emp01;

create table emp01
(
    empno number(4) not null, -- not null : data를 안넣으면 안됨
    ename varchar2(20) not null,
    job varchar2(30),  -- 연수라는 과정있음, 없어도 된다고 판단해서 조건제약x
    deptno number(2)
);

desc emp01;

insert into emp01
values (111, '이홍민', null,'');    -- 명시적인 null 데이터삽입 / null = ''

select * from emp01;

insert into emp01 (empno, ename)
values (2222, '두번째이름');

drop table emp03;


create table emp03
(
    empno number(4) unique not null, -- = promary key
    ename varchar2(20) not null,
    job varchar2(30),
    deptno number(2)
);

select * from emp03;

insert into emp03
values (111, '이홍민', 'student',10);

insert into emp03
values (111, 'Drake', 'doctor',20); -- unique constrint voilated 오류발생

insert into emp03
values (null, 'Drake', 'doctor',20); 

----- 제약 조건 명(이름) 설정
    -- 제약조건명은 한 계정에 같은 이름으로 설정하지 못 함
drop table emp04;

create table emp04
(
    empno number(4) constraint emp04_empno_uk unique, --제약조건 이름 할당
    ename varchar2(20) constraint emp04_ename_nn not null,
    job varchar2(30),
    deptno number(2)
);

desc emp04;

insert into emp04
values (111, 'DRAKE', 'doctor',1);

insert into emp04
values (111, 'BIEBER', 'STAR',1); -- 설정한 제약조건명이 보임
                        -- 제약조건명은 한 계정에 같은 이름으로 설정하지 못 함
select * from emp04;


                        select constraint_name, constraint_type, table_name
                        from user_constraints;
            -- 제약조건이 늘어난 것이 보임 / 내가 설정한것이 추가된것


select * 
from user_cons_columns;

-- 유일키 부여
drop table emp05;
create table emp05
(
    empno number(4) constraint emp05_empno_pk primary key,
    ename varchar2(20) constraint emp05_ename_nn not null,
    job varchar2(30),
    deptno number(2)
);
desc emp05;

insert into emp05
values (111, 'DRAKE', 'doctor',1);

insert into emp05
values (111, 'BIEBER', 'STAR',1); 

insert into emp05
values (null, 'BIEBER', 'STAR',1); 

select * from emp05;


-- foreign key  / 외래 키 / 상대방 table 필요 / 
desc emp;
desc dept;
select * from dept;
select * from emp; -- emp의 deptno 컬럼은 dept의 deptno란 컬럼에 의해 제한됨
-- 외래 키 사용 / 상대 table에 있는 데이터만 참조하여 사용 됨 (부모 자식 사이)
-- 참조당하는 컬럼에 foreign key 제약조건을 걸어줌 ( 부모의 column에 걸어줌)

insert into emp(empno, ename, deptno)
values (5000, 'DRAKE', 50);     -- parent key not found (=foreign key)

select constraint_name, constraint_type, table_name,r_constraint_name
from user_constraints
where table_name in('DEPT','EMP');

select * 
from user_cons_columns;

drop table emp06;

create table emp06 
(
    empno number(4) constraint emp06_empno_pk primary key,
    ename varchar2(20) constraint emp06_ename_nn not null,
    job varchar2(30),
    deptno number(2) constraint emp06_ename_fk references dept(deptno) 
                                    -- 외래키의 부모 설정 (참조할 대상 설정)
);

insert into emp06(empno, ename, deptno)
values(5000, 'DRAKE', 50);  -- 부모인 dept table에 제약조건이 걸려있음

insert into emp06(empno, ename, deptno)
values(5000, 'DRAKE', 40); -- foreign key 제약조건에 

select *from emp06;


-- check 제약 조건

create table emp07
(
    empno number(4) constraint emp07_empno_pk primary key,
    ename varchar2(20) constraint emp07_ename_nn not null,
    sal number(7,2) constraint emp07_sal_ck check(sal between 500 and 5000),
    gender varchar2(1) constraint emp07_gender_ck check(gender in('M','F'))
);

desc emp07;

insert into emp07

values (111,'이홍민', 200, 'M');   -- sal / check 오류

values (111,'이홍민', 700, 'm');   -- gender / check 오류

select * from emp07;



-- view table  
    
    -- 가상 테이블 / 만들 권한이 없음 / 수정 불가능
    -- view는 보기만 하는 용도
    -- 서브퀴리문 만들어지면서 제약조건은 포함되지 않음 / 따로 설정해야함
create table dept_copy      
as 
select * from dept;

create table emp_copy
as
select * from emp;

-- 권한 부여 / 관리자의 권한으로
grant create view 
to scott;

create or replace view  emp_view30    -- or replace : 옵션 / 기존에 있는 view에 view를 더하는 느낌
as
select empno, ename, sal, deptno
from emp_copy
where deptno = 30;

select * from emp_view30;
delete from emp_view30 -- 삭제됨

select * from emp_copy; -- view 를 지우면 copy 테이블이 지워짐 /

drop view emp_view30;   
select * from emp_copy; -- 삭제되더라도 원래 data는 삭제되지 않음 /


-- user_views
desc user_views;

select view_name, text    -- text = view를 실행한 퀴리문을 확인가능(code)
from user_views;


-- index 활용방식
    -- data의 검색 속도를 빠르게 하기 위해 사용
select index_name, table_name, column_name
from user_ind_columns
where table_name in('EMP06','DEPT');

desc user_indexes;

select index_name, table_name
from user_indexes;

drop table emp01;
create table emp01      -- copy되어서 넘어오면 제약조건 data은 적용x
as 
select * from emp;

select index_name, table_name, column_name
from user_ind_columns
where table_name in('EMP01');

insert into emp01
select * from emp01;

insert into emp01 (empno, ename)
values ( 1111, 'AAA');

select * from emp01
where ename = 'AAA';

-- index 생성 방법
    -- create index 인덱스이름 on 인덱스(컬럼)
create index emp01_ename
on emp01(ename);
