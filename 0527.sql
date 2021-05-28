--DDL   / Data Definition Language      -- ������ ���� ���
--    create, drop, alter
--
--DML  / Data Manipulation Language    -- �����͸� �����ϴ� ���
--    select, insert, update, delete 
--    
--DCL  / Data Control Language       -- ������ ���� ���
--    grant, revoke 
--    
--TCL  / Transaction Control Language   --  DCL ���� Ʈ������� �����ϴ� ���
--    commit, rollback

--���� - char, varchar
--���� - number
--��¥ - date


create table emp01       -- table �����
(
    empno number(4),
    ename varchar(20),
    sal number(7,2)
);

select *
from emp01;

desc emp01;

create table empsub        -- ���� ������ ����� ��� / ������ �� ���
as                         -- (emp) table �̶� ���� ������ table�� �������
select * from emp;

desc empsub;  -- Describe / Ư�� ���̺� � �÷��� �ִ��� ��ȸ�ϴ� ��ɾ�

select *
from empsub;

create table emp03 
as 
select empno, ename
from emp;

desc emp03;

select * from emp03;

-- emp05 / �μ���ȣ�� 10���� �����
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
where 1 = 0;        -- �����Ǵ� ���Ǿ��� / �����͸� �������� ����.

desc emp06;

select * from emp06;


--table ���� ���           CHAR�� ������ / VARCHAR�� ������

----�÷���Ҹ� ���氡�� �߰� ���� ����
--alter table emp01
--add(job varchar2(9));
--
----�÷�Ÿ�Ժ���(�̹� �����͸� ������ �ִ� ��쿣 �ȵȴ�.)
--alter table emp01
--modify(job VARCHAR2(30));
--
----�÷� ���� (�÷��� �� ������� �Ѵ�)
--alter table emp01
--drop column job;
--
----���̺� ����
--drop table emp01;

select * from emp01;

select *
from emo02;

truncate table emp01;

truncate table emp02;   -- truncate : �÷��� ���ΰ� ��(������)�� ����

-- dictionary view      ��ųʸ� �� - �������Ͽ����� ������ �� �� �ִ�.
-- USER_xxxx (���� ������) 
-- ALL_xxxx (���� ���� ������)
-- DBA_xxxx (������ ������ ���� ������)
-- xxxx : ��� 

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
values (1111,'��ȫ��','�л�',9999,sysdate,100,100,10);

select * from emp01;

insert into emp01   -- ��� Ŀ���� �����͸� �ִ´ٸ� ��������
values (1111,'��ȫ��','�л�',9999,'1998-04-15',100,100,10);

insert into emp01 (empno, ename, sal)
values (24, '��ȫ��', 222);

-- transaction
commit;

select * from emp01;

select *
from dept;

desc dept;              -- deptno : not null / ����� ���� ����θ� �ȵ�

insert into dept (dname, loc) 
values ('�λ��', '����');   -- ���� �߻� / deptno�� null �� ���� �� ���� 


-- update
    -- update table   set 
update emp01 
set deptno = 40;    -- ��� deptno �� 40���� �����

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
where deptno = 10;  -- deptno �� 10�� ������� deptno�� 30���� �ٲ� / 
            -- Ŀ�ǵ���ο����� �ݿ����� ���� / Ŀ������ ����
commit;

update emp01
set sal = sal * 1.1, comm = 10000
where sal >= 3000;

select * from emp01;

-- �Ի翬���� 82�⵵�� ����� �Ի����� ���� ��¥�� �ٲ㺸����
update emp01 
set hiredate = sysdate
where substr(hiredate,1,2) = '82';  -- substr,�����Լ� �̿��ؼ� 
                        -- ''�� �־�������� ��¥���� �����ϰ� ǥ����
                        
-- delete
        -- truncate / ��ü���� / rollaback �Ұ��� / �����Ұ�
        -- delete / �κл��� / rollback ���� / ��������
delete from emp01;      -- ������������ = Ŀ����������

select * from emp01;
rollback;              -- ���� Ŀ���� ����

delete 
from emp01
where deptno = 30;
commit;

create table dept01         -- �ڵ����� commit �����
as 
select * from dept;

delete from dept01;
select * from dept01;
rollback;   -- commit �� �� / create �� ���� �̵� ��


-- 5�� ��������  / column�� ���� / dictionary�� ������
    -- not null -> c        data �Է� �ʼ� 
    -- unique -> u          �ߺ� �Ұ�, null �ߺ� ���
    -- primary key -> p     �ߺ� �Ұ�, data �Է� �ʼ� / �Ȱ��� �� �ߺ� ���x 
    -- foreign key -> r     table ���� �������� / reference
    -- check -> c           ���� ���� ��������
    
desc dept;
desc emp;

--user_constraints

desc user_constraints;

select constraint_name, constraint_type, table_name
from user_constraints;  -- user�ȿ� �ִ� ���������� �ִ� column�� ��� ���� 

--���踦 �˾ƺ��� �������� ���
select *
from user_cons_columns; -- Ȯ���Ϸ��� user_constraints�� Ȯ���ؾ���
                                -- join ���� ���ÿ� Ȯ�� ��������?
                                
desc user_cons_columns;

drop table emp01;

create table emp01
(
    empno number(4) not null, -- not null : data�� �ȳ����� �ȵ�
    ename varchar2(20) not null,
    job varchar2(30),  -- ������� ��������, ��� �ȴٰ� �Ǵ��ؼ� ��������x
    deptno number(2)
);

desc emp01;

insert into emp01
values (111, '��ȫ��', null,'');    -- ������� null �����ͻ��� / null = ''

select * from emp01;

insert into emp01 (empno, ename)
values (2222, '�ι�°�̸�');

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
values (111, '��ȫ��', 'student',10);

insert into emp03
values (111, 'Drake', 'doctor',20); -- unique constrint voilated �����߻�

insert into emp03
values (null, 'Drake', 'doctor',20); 

----- ���� ���� ��(�̸�) ����
    -- �������Ǹ��� �� ������ ���� �̸����� �������� �� ��
drop table emp04;

create table emp04
(
    empno number(4) constraint emp04_empno_uk unique, --�������� �̸� �Ҵ�
    ename varchar2(20) constraint emp04_ename_nn not null,
    job varchar2(30),
    deptno number(2)
);

desc emp04;

insert into emp04
values (111, 'DRAKE', 'doctor',1);

insert into emp04
values (111, 'BIEBER', 'STAR',1); -- ������ �������Ǹ��� ����
                        -- �������Ǹ��� �� ������ ���� �̸����� �������� �� ��
select * from emp04;


                        select constraint_name, constraint_type, table_name
                        from user_constraints;
            -- ���������� �þ ���� ���� / ���� �����Ѱ��� �߰��Ȱ�


select * 
from user_cons_columns;

-- ����Ű �ο�
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


-- foreign key  / �ܷ� Ű / ���� table �ʿ� / 
desc emp;
desc dept;
select * from dept;
select * from emp; -- emp�� deptno �÷��� dept�� deptno�� �÷��� ���� ���ѵ�
-- �ܷ� Ű ��� / ��� table�� �ִ� �����͸� �����Ͽ� ��� �� (�θ� �ڽ� ����)
-- �������ϴ� �÷��� foreign key ���������� �ɾ��� ( �θ��� column�� �ɾ���)

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
                                    -- �ܷ�Ű�� �θ� ���� (������ ��� ����)
);

insert into emp06(empno, ename, deptno)
values(5000, 'DRAKE', 50);  -- �θ��� dept table�� ���������� �ɷ�����

insert into emp06(empno, ename, deptno)
values(5000, 'DRAKE', 40); -- foreign key �������ǿ� 

select *from emp06;


-- check ���� ����

create table emp07
(
    empno number(4) constraint emp07_empno_pk primary key,
    ename varchar2(20) constraint emp07_ename_nn not null,
    sal number(7,2) constraint emp07_sal_ck check(sal between 500 and 5000),
    gender varchar2(1) constraint emp07_gender_ck check(gender in('M','F'))
);

desc emp07;

insert into emp07

values (111,'��ȫ��', 200, 'M');   -- sal / check ����

values (111,'��ȫ��', 700, 'm');   -- gender / check ����

select * from emp07;



-- view table  
    
    -- ���� ���̺� / ���� ������ ���� / ���� �Ұ���
    -- view�� ���⸸ �ϴ� �뵵
    -- ���������� ��������鼭 ���������� ���Ե��� ���� / ���� �����ؾ���
create table dept_copy      
as 
select * from dept;

create table emp_copy
as
select * from emp;

-- ���� �ο� / �������� ��������
grant create view 
to scott;

create or replace view  emp_view30    -- or replace : �ɼ� / ������ �ִ� view�� view�� ���ϴ� ����
as
select empno, ename, sal, deptno
from emp_copy
where deptno = 30;

select * from emp_view30;
delete from emp_view30 -- ������

select * from emp_copy; -- view �� ����� copy ���̺��� ������ /

drop view emp_view30;   
select * from emp_copy; -- �����Ǵ��� ���� data�� �������� ���� /


-- user_views
desc user_views;

select view_name, text    -- text = view�� ������ �������� Ȯ�ΰ���(code)
from user_views;


-- index Ȱ����
    -- data�� �˻� �ӵ��� ������ �ϱ� ���� ���
select index_name, table_name, column_name
from user_ind_columns
where table_name in('EMP06','DEPT');

desc user_indexes;

select index_name, table_name
from user_indexes;

drop table emp01;
create table emp01      -- copy�Ǿ �Ѿ���� �������� data�� ����x
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

-- index ���� ���
    -- create index �ε����̸� on �ε���(�÷�)
create index emp01_ename
on emp01(ename);
