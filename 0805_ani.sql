create table movie(
    code NUMBER(4), --��ȭ�ڵ�
    title varchar2(50), -- ��ȭ����
    price number(10), -- ����
    director varchar2(20), -- ����
    actor varchar2(20),  -- �⿬���
    poster varchar2(100), -- ������
    synopsis varchar2(3000), -- ����
    PRIMARY KEY (code)
);

commit;

create sequence movie_seq 
start with 1
increment by 1;

insert into movie values(movie_seq.nextval, 'Test1', 1111, 'Test1', 'Test1', 'Test1', '�׽�Ʈ ���Դϴ�.'); 

select * from movie;