create user nonage IDENTIFIED BY tiger;

grant connect, resource to nonage;
grant create view to nonage;

select * from all_users;