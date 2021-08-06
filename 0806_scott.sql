create table users(
    id varchar2(15),
    password varchar2(10),
    addr varchar2(50),
    age NUMBER(3),
    gender VARCHAR2(1) DEFAULT 'M',
    name varchar2(15),
    nation varchar2(15),
    PRIMARY KEY (id)
);

select * from users;

commit;

insert into users values('makima', '1111', 'chainsaw', 27, 'w', 'makima', 'japan');