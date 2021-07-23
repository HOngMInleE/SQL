select *
from student;

insert into student
values (12,'denji');

select * 
from student
ORDER BY num asc;


commit;

select empno, ename, e.deptno, dname, loc --공통컬럼이 아닌경우 별칭 생략 가능
from emp e,dept d
where e.deptno = d.deptno;