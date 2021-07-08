--// 컬럼 검색 방법
--	    select 컬럼명1,컬럼명2,....
--	    from 테이블명;
--// 연산자
--	// 연산자는 select절에서 사용되어야함.

select * 
from emp;

select * 
from dept;

select ename, sal, comm, sal * 12, sal * 12 + comm  
from emp;           -- null = 값이 없는 데이터. 곲하거나 더하면 null이 됨. 

                                        -- nvl : 함수,  comm 을 0으로 바꾼다.  
select ename, sal, comm, sal * 12, sal * 12 + nvl(comm,0) as 연봉     
from emp;        --연봉이란 이름으로 바꿔줌. 문자 사이에 공백이 들어가면 ""처리 필수.

select *
from dept;  

select deptno 부서번호, dname 부서명, loc 근무지      -- as 는 생략 가능.
from dept;

-- select 옵션사용 (가공)
select DISTINCT deptno 부서번호     -- DISTINCT : 중복제거
from emp;

select DISTINCT job     -- 실제 이 회사에서 하는 job들.
from emp;
