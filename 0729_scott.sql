create table Employees (
    id varchar2(10) not null,
    pass varchar2(10) not null,
    name varchar2(24),
    lev char(1) default 'A', --A:운영자, B:일반회원
    enter date default sysdate, -- 등록일
    gender char(1) default '1', -- 1:남자, 2:여자
    phone varchar2(30),
    primary key(id)
);
select * from employees;

commit;

delete employees where gender='1';

insert into employees 
values('pinksung','3333','성윤정','A',TO_DATE('2014/04/17','yy/mm/dd'),'2','010-2222-2222');

insert into employees 
values('subin','1234','윤수빈','B',TO_DATE('2014/04/17','yy/mm/dd'),'1','010-9999-9999');

insert into employees 
values('admin','1111','정운영','A',TO_DATE('2014/04/17','yy/mm/dd'),'1','010-1111-1111');