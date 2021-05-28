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
    hisal number
);

insert into emp01
values ('7369', 'SMITH', 'JOB', 7902, '80/12/17', 800, null, 10);

insert into emp01
values ('7566', 'JONES', 'MANAGER', 7839, '81/04/02', 2975, null, 20);

COMMIT;
rollback;

INSERT into dept01
values (10, 'ACCOUNTING','YORK');
INSERT into dept01
values (20, 'RESEARCH','DALLAS');
INSERT into dept01
values (30, 'SALES','CHICAGO');
INSERT into dept01
values (40, 'OPERATIONS','BOSTON');



alter table emp01
modify(job VARCHAR2(30));