drop table emp01;

create table emp01
as 
select * from emp;

select * from emp01;

create table employee (
    name varchar2(20),
    address varchar2(100),
    ssn varchar2(15)
);

select * from employee;

insert into employee values('duke','seoul','970224-1039234');
insert into employee values('pororo','pusan','001222-1038782');
insert into employee values('candy','daejeon','981221-1829192');

select * from employee;

delete employee;

create table item (
    name VARCHAR2(20),
    price number(8),
    description varchar2(100)
);

select * from item;

insert into item values('denji','1','pochita');

commit;