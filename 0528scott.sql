--// �÷� �˻� ���
--	    select �÷���1,�÷���2,....
--	    from ���̺��;
--// ������
--	// �����ڴ� select������ ���Ǿ����.

select * 
from emp;

select * 
from dept;

select ename, sal, comm, sal * 12, sal * 12 + comm  
from emp;           -- null = ���� ���� ������. ���ϰų� ���ϸ� null�� ��. 

                                        -- nvl : �Լ�,  comm �� 0���� �ٲ۴�.  
select ename, sal, comm, sal * 12, sal * 12 + nvl(comm,0) as ����     
from emp;        --�����̶� �̸����� �ٲ���. ���� ���̿� ������ ���� ""ó�� �ʼ�.

select *
from dept;  

select deptno �μ���ȣ, dname �μ���, loc �ٹ���      -- as �� ���� ����.
from dept;

-- select �ɼǻ�� (����)
select DISTINCT deptno �μ���ȣ     -- DISTINCT : �ߺ�����
from emp;

select DISTINCT job     -- ���� �� ȸ�翡�� �ϴ� job��.
from emp;
