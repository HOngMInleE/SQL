grant create view 
to scott;

create user human
IDENTIFIED by human; -- 접속권한이 없어 접속 불가능

grant connect, resource
to human;