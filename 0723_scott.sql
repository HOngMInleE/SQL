select *
from student;

insert into student
values (12,'denji');

select * 
from student
ORDER BY num asc;


commit;

select empno, ename, e.deptno, dname, loc --�����÷��� �ƴѰ�� ��Ī ���� ����
from emp e,dept d
where e.deptno = d.deptno;