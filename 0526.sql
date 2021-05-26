select *
from emp
--������
where sal >= 3000;
-- �񱳿����� -- <, >, <=, >=, =, !=.<>(���� �ǹ��� �ٸ���), 

select *
from emp
where deptno = 10;

select *
from emp
where ename = 'FORD'; -- ���� �߻� / ���ڸ� ����� �� '' ���. 
                    -- �׷��� ���� / table �ȿ� ������ ��ҹ��� ������.

-- smtih ���, �̸� , �޿�
select empno, ename, sal 
from emp
where ename = 'SMITH';

-- ��¥ ���� --����ʽú��� ������ �� ������ / ũ�� �� ����.
select *
from emp
where hiredate < '81/11/17'; --�����߻� / '' ����ؾ��� /����,��¥������ �����. 

-- �������� and, or, not 
select *
from emp
where deptno = 10 and job = 'MANAGER';

select *
from emp
where deptno = 10 or job = 'MANAGER';

select * 
from emp 
where not deptno = 10; -- 10�� �μ��� �ƴ� �������� ����.

select * 
from emp 
where deptno <> 10; -- <> = !=  / �ľտ� �� ���������� ��밡��.

select *
from emp
where sal >= 2000 and sal <= 3000;

select *
from emp
where sal < 2000 or sal > 3000;

-- 7499, 7566, 7844 �����ȣ ��ȸ
select *
from emp
where empno = 7499 or empno = 7566 or empno = 7844;

--BETWEEN
select *
from emp 
where sal BETWEEN 2000 and 3000; -- BETWEEN and / ~ , ~ ����
-- where sal >= 2000 and sal <= 3000; ���� �ǹ�.

select * 
from emp
where hiredate BETWEEN '81/02/01' and '81/06/30';


--where empno = 7499 or empno = 7566 or empno = 7844;
select * 
from emp
where empno not in(7749,7566,7844);

-- ���ϵ�ī��( LIKE % , _ ) / �������� �Ϻθ� �� ��.

SELECT *
FROM emp
where ename like 'M%'; -- M���� ' ���� '�ϴ� ��� ������

select *
from emp 
where ename like '%A%'; -- A �� ' ���� '�� ��� ������
            -- 'A%' = A�� ' ������ ' ��� ������
            
select *
from emp
where ename like '_A%'; -- �ι�° ���ڰ� A �� ��� ������ &:�ڿ��� ���� ���� ���x

select *
from emp
where ename not like '_A%';

select *
from emp
where comm is null or comm = 0; -- not �� is �ڿ�.

select *
from emp
where mgr is null;


select *
from emp
order by sal; -- asc;   -- asc : ���� ���� ���� / �����Ҷ� asc ��������

select *
from emp
order by sal desc; -- desc : ��������

select *
from emp
order by sal desc, ename desc; -- �ι�° ���� = �� ���� ���� �κ� ����

select *
from emp
where deptno = 30
order by sal desc, ename; -- order by �� �� �������� ��ġ�ؾ��� / �ƴϸ� ����


-- ���� �Լ�

select -10,abs(-10) -- abs : ���밪�� ������
from dual;      

select round(34.5678,2) --round : �ݿø� / ,2 : 3��° �ڸ����� �ݿø�.
from dual; -- 34.57 / 2��° �ڸ����� ������

select trunc(34.5678,2) --trunc : �ݳ���
from dual; -- 34.56 / �Ҽ� 2��°���� �����ְ� 3��°���� �ݳ���

select mod(27,2)
from dual; -- 1 : ������

select *
from emp
where mod(empno,2) = 1; -- �����ȣ�� Ȧ��


-- �����Լ�

select length('orcle') -- length / ���� ���� ��ȯ
from dual; -- 5

select substr('Welcome to Orcle',4,3) -- substr : ������ġ���� ���°������ ����
from dual; -- com

select substr('Welcome to Oracle',-4,3) -- '-4' : �ڿ�������
from dual; -- acl 

select substr(hiredate,1,2) �⵵, substr(hiredate,4,2) ��, substr(hiredate,7,2) ��
from emp;

select * -- ���̺� ���� / Ȯ���ϰ��� �ϴ� table ����
from emp
where substr(hiredate,4,2) = 09; -- �¾ ���� 9���� ��� ã��

-- ���� ���.
-- where hiredate between '1987/01/01' and '1987/12/31';
-- where substr(hiredate,1,2);

select instr('welcome to oracle','o') -- instr : ���ڸ� ã���� (ù��°�� ��ȯ)
from dual; -- 5 

select instr('welcome to oracle','o',6,2) 
from dual; -- 12 / 'o'�� 6��°(m)���� ã�Ƽ� �ι�° 'o'�� ��ȯ

select *
from emp
where ename like '__R%';

--instr
select *
from emp
where instr(ename,'R',3,1) = 3; -- 3 : ������ġ�� ���ڰ� 

--substr
select *
from emp
where substr(ename,3,1) = 'R';


-- ��¥ �Լ�
select sysdate -- ���� ��¥ ������
from dual;

select sysdate -1 ����, sysdate + 1 ����
from dual;

select round(sysdate -hiredate)  --������ó�¥ - �Ի糯¥
from emp; -- �� ���� ��ȯ

select round((sysdate - hiredate) / 365)
from emp;   -- �ټӿ���

select ename, hiredate,trunc(months_between(sysdate,hiredate))
from emp; -- �̸�, �Ի���, �ٹ��ϼ�


--�׷��Լ�  sum, avg, count, max, min
    --�������� �����͵��� �Ѱ��� ����� �������
select *
from emp;

select sum(sal) -- sum : �հ豸�ϱ�
from emp; 

select trunc(avg(sal))
from emp;

select max(sal), min(sal)
from emp;

select ename, max(sal) 
from emp;  -- �����߻� / �Ϲ� �÷��ϰ� ���� ���Ұ��� / ���ڵ��� ������ ����ġ�ؼ�.

select count(empno)
from emp;

select count(comm)
from emp;

select count(*) "��ü ����� ��", count(comm) "Ŀ�̼� �޴� ����� ��"
from emp;

select count(DISTINCT job) -- DISTINCT : �ߺ� �Ǵ� ������ ����.
from emp;

select deptno, avg(sal)
from emp
group by deptno    -- �÷��� �׷��Լ��� ���ڵ� ������ ���� ������. 
having avg(sal) >= 2000;    -- group by �� ���� ������, �׷��Լ� ���

--�μ���ȣ �ִ�޿� �ּұ޿�
select deptno, max(sal), min(sal)
from emp
group by deptno
having max(sal) >= 2900
order by max(sal) desc;


--select    ���� ��밡���� ��
--from
--where
--group by
--having
--order by      -- �Ǹ������� ����.


-- ���� (join)  / �� �� �̻��� ���̺��� ����ؼ� �����͸� ��ȸ�ϴ� ��
