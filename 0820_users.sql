create table users (
    id varchar2(8) primary key,
    password varchar2(8),
    name varchar(20),
    role varchar2(10)
);

drop table users;

select * from users;

commit;
