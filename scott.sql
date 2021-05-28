select table_name
from user_tables
order by table_name desc;

desc user_constraints;

select constraint_name, constraint_type, table_name
from user_constraints;

select ename "사원 이름", dname "부서 이름" , grade "급여 등급"
from emp , dept, salgrade;

drop table dept01;

drop table emp01;


create table dept01
(
    deptno number (2) constraint dept01_deptno_pk primary key ,
    dname varchar2 (14),
    loc varchar2 (13)
);

create table emp01
(
    empno number(4) constraint emo01_empno_p primary key,
    ename varchar2(10),
    job varchar2(9),
    mgr number(4),
    hiredate date,
    sal number(7,2),
    comm number(7,2),
    deptno number(2) constraint emp01_deptno_f references dept01(deptno) 
);

create table salgrade01
(
    grade number,
    losal number,
    hisal number,
);


desc user_indexes;

desc user_views;

select *
from all_indexes;

select *
from all_views;

select *
from dba_indexes;


create index emp_ename
on emp(ename);

select index_name, table_name
from user_ind_columns
where table_name in('EMP');

desc user_indexes;

drop index emp_ename;

drop table emp_copy;

create table emp_copy
as 
select * from emp;

create view emp_view
as
select * from emp;

drop table emp_copy;

drop view emp_view;


insert into dept (dname, loc) 
values ('인사부', '서울')