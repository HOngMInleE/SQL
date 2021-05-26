-- ���� (join)  / �� �� �̻��� ���̺��� ����ؼ� �����͸� ��ȸ�ϴ� ��

select ename, e.deptno, dname 
-- deptno �����÷��̴� ������̺��� ���� �����ð����� �������������. �ƴϸ� ��������
from emp e, dept d -- ��Ī ���� / �����ϸ� table�� ���� �̸� ��� ����.
where e.deptno = d.deptno
and ename = 'ALLEN';

--acctounting  �μ� �Ҽ� ����� �̸��� �Ի����� ����ϼ���
select e.ename �̸�, e.hiredate �Ի���
from emp e, dept d
where e.deptno = d.deptno
and d.dname = 'ACCOUNTING';


-- ������ ����
-- cross join, equi join, non equi join, out join, self join

select *
from emp;

select *
from dept;

select *
from salgrade;

select ename, dname, grade
from emp, dept, salgrade sal
where emp.deptno = dept.deptno
and  emp.sal BETWEEN sal.losal and sal.hisal; 
-- emp.sal�� between ���� hisal�� losal���̿� ��, �����Ǵ� ���� ��ȯ.  

-- self join / �������� table �� ����
select e.ename || '�� �Ŵ�����' || m.ename || '�Դϴ�'   -- || ������ �����߻�
from emp e,emp m  -- ��Ī���� �� ���̺��� �������� ����(���� ����� �ٸ��� �θ��°ͻ�)
where e.mgr = m.empno;
-- self join�� ���� / 1���� ���� (president / manager ����)


--FORD�� ������ �ٹ������� �ٹ��ϴ� ����� �̸��� ����ϼ���. / �ٹ���x �ٹ��μ�o
                                -- ���������� �ٹ������ ǥ���� �ָ��ѰͰ���.
--��, FORD�� �����ϰ� ����Ѵ�.
                     -- �ٹ��������� emp���� ��������. dept table �ʿ�x
                     
    -- �̷����ϸ� ���� �μ�, ���� ������ ����� ã�� ��.
select e2.ename �̸�, d1.deptno "�μ� ��ȣ", d1.loc �ٹ�����
from emp e1, emp e2, dept d1, dept d2 -- �̸� �� 2��, �μ���ȣ �� 2�� 
where e1.ename = 'FORD' -- �̸� ford ����
and e1.deptno = d1.deptno -- �μ���ȣ ���� �� ã�� loc ���̺�� �Ѿ
and d1.loc = d2.loc  -- ���� ��, ���� ����(������) ã��
and e2.deptno = d2.deptno -- d1,d2 �� ���� �������.
and e2.ename <> 'FORD'; -- ����,�� ford�� ����.



select  e2.ename
from emp e1, emp e2
where e1.deptno = e2.deptno
and e1.ename = 'FORD'
and e2.ename != 'FORD';

-- out join /
-- ������ ���� ���� Ʋ����(���ǿ� ���� �ʾƵ� �ش��ϴ� table�� ������ ��� ���) 
select e.ename || '�� �Ŵ����� ' || m.ename || '�Դϴ�'   
from emp e,emp m  
where e.mgr = m.empno(+); -- ������ null �����͵� �������.