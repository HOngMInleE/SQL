create table emp01
(
    empno number(4) constraint empno_p primary key,
    ename varchar2(10),
    job varchar2(9),
    mgr number(4),
    hiredate date,
    sal number(7,2),
    comm number(7,2),
    deptno number(2) constraint deptno_f references dept(deptno)
);

drop table emp01;

commit;

create table dept01
(
    deptno number(2) constraint deptno_p primary key,
    dname varchar2(14),
    loc varchar2 (13),
);