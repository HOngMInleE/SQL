create table Employees (
    id varchar2(10) not null,
    pass varchar2(10) not null,
    name varchar2(24),
    lev char(1) default 'A', --A:���, B:�Ϲ�ȸ��
    enter date default sysdate, -- �����
    gender char(1) default '1', -- 1:����, 2:����
    phone varchar2(30),
    primary key(id)
);
select * from employees;

commit;

delete employees where gender='1';

insert into employees 
values('pinksung','3333','������','A',TO_DATE('2014/04/17','yy/mm/dd'),'2','010-2222-2222');

insert into employees 
values('subin','1234','������','B',TO_DATE('2014/04/17','yy/mm/dd'),'1','010-9999-9999');

insert into employees 
values('admin','1111','���','A',TO_DATE('2014/04/17','yy/mm/dd'),'1','010-1111-1111');