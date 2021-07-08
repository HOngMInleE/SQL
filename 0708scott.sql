create table student (
    no number(2) primary key,
    name varchar2(10),
    age number(3),
    phone varchar(15),
    email varchar(15)
);
    
create SEQUENCE studentSeq
INCREMENT BY 1
START WITH 1;

select * from student;
