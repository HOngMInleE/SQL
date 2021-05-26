select *
from emp
--조건절
where sal >= 3000;
-- 비교연산자 -- <, >, <=, >=, =, !=.<>(같은 의미의 다르냐), 

select *
from emp
where deptno = 10;

select *
from emp
where ename = 'FORD'; -- 오류 발생 / 문자를 사용할 때 '' 사용. 
                    -- 그래도 오류 / table 안에 내용은 대소문자 구분함.

-- smtih 사번, 이름 , 급여
select empno, ename, sal 
from emp
where ename = 'SMITH';

-- 날짜 정보 --년월초시분일 정보가 다 들어가있음 / 크기 비교 가능.
select *
from emp
where hiredate < '81/11/17'; --오류발생 / '' 사용해야함 /문자,날짜정보에 꼭사용. 

-- 논리연산자 and, or, not 
select *
from emp
where deptno = 10 and job = 'MANAGER';

select *
from emp
where deptno = 10 or job = 'MANAGER';

select * 
from emp 
where not deptno = 10; -- 10번 부서가 아닌 나머지가 나옴.

select * 
from emp 
where deptno <> 10; -- <> = !=  / 식앞에 논리 부정연산자 사용가능.

select *
from emp
where sal >= 2000 and sal <= 3000;

select *
from emp
where sal < 2000 or sal > 3000;

-- 7499, 7566, 7844 사원번호 조회
select *
from emp
where empno = 7499 or empno = 7566 or empno = 7844;

--BETWEEN
select *
from emp 
where sal BETWEEN 2000 and 3000; -- BETWEEN and / ~ , ~ 사이
-- where sal >= 2000 and sal <= 3000; 같은 의미.

select * 
from emp
where hiredate BETWEEN '81/02/01' and '81/06/30';


--where empno = 7499 or empno = 7566 or empno = 7844;
select * 
from emp
where empno not in(7749,7566,7844);

-- 와일드카드( LIKE % , _ ) / 데이터의 일부만 알 때.

SELECT *
FROM emp
where ename like 'M%'; -- M으로 ' 시작 '하는 모든 데이터

select *
from emp 
where ename like '%A%'; -- A 가 ' 포함 '된 모든 데이터
            -- 'A%' = A로 ' 끝나는 ' 모든 데이터
            
select *
from emp
where ename like '_A%'; -- 두번째 글자가 A 인 모든 데이터 &:뒤에는 뭐가 오던 상관x

select *
from emp
where ename not like '_A%';

select *
from emp
where comm is null or comm = 0; -- not 은 is 뒤에.

select *
from emp
where mgr is null;


select *
from emp
order by sal; -- asc;   -- asc : 오름 차순 정렬 / 정렬할때 asc 생략가능

select *
from emp
order by sal desc; -- desc : 내림차순

select *
from emp
order by sal desc, ename desc; -- 두번째 정렬 = 앞 정렬 기준 부분 정렬

select *
from emp
where deptno = 30
order by sal desc, ename; -- order by 는 맨 마지막에 위치해야함 / 아니면 오류


-- 숫자 함수

select -10,abs(-10) -- abs : 절대값을 씌어줌
from dual;      

select round(34.5678,2) --round : 반올림 / ,2 : 3번째 자리에서 반올림.
from dual; -- 34.57 / 2번째 자리까지 보여줌

select trunc(34.5678,2) --trunc : 반내림
from dual; -- 34.56 / 소수 2번째까지 보여주고 3번째에서 반내림

select mod(27,2)
from dual; -- 1 : 나머지

select *
from emp
where mod(empno,2) = 1; -- 사원번호가 홀수


-- 문자함수

select length('orcle') -- length / 문자 길이 반환
from dual; -- 5

select substr('Welcome to Orcle',4,3) -- substr : 시작위치부터 몇번째까지의 문자
from dual; -- com

select substr('Welcome to Oracle',-4,3) -- '-4' : 뒤에서부터
from dual; -- acl 

select substr(hiredate,1,2) 년도, substr(hiredate,4,2) 월, substr(hiredate,7,2) 일
from emp;

select * -- 테이블 선택 / 확인하고자 하는 table 선택
from emp
where substr(hiredate,4,2) = 09; -- 태어난 달이 9월인 사람 찾기

-- 같은 결과.
-- where hiredate between '1987/01/01' and '1987/12/31';
-- where substr(hiredate,1,2);

select instr('welcome to oracle','o') -- instr : 문자를 찾아줌 (첫번째만 반환)
from dual; -- 5 

select instr('welcome to oracle','o',6,2) 
from dual; -- 12 / 'o'를 6번째(m)부터 찾아서 두번째 'o'를 반환

select *
from emp
where ename like '__R%';

--instr
select *
from emp
where instr(ename,'R',3,1) = 3; -- 3 : 문자위치의 숫자값 

--substr
select *
from emp
where substr(ename,3,1) = 'R';


-- 날짜 함수
select sysdate -- 현재 날짜 데이터
from dual;

select sysdate -1 어제, sysdate + 1 내일
from dual;

select round(sysdate -hiredate)  --현재오늘날짜 - 입사날짜
from emp; -- 일 수로 반환

select round((sysdate - hiredate) / 365)
from emp;   -- 근속연수

select ename, hiredate,trunc(months_between(sysdate,hiredate))
from emp; -- 이름, 입사일, 근무일수


--그룹함수  sum, avg, count, max, min
    --여러개의 데이터들을 한개의 결과로 만들어줌
select *
from emp;

select sum(sal) -- sum : 합계구하기
from emp; 

select trunc(avg(sal))
from emp;

select max(sal), min(sal)
from emp;

select ename, max(sal) 
from emp;  -- 오류발생 / 일반 컬럼하고 같이 사용불가능 / 레코드의 개수가 불일치해서.

select count(empno)
from emp;

select count(comm)
from emp;

select count(*) "전체 사원의 수", count(comm) "커미션 받는 사원의 수"
from emp;

select count(DISTINCT job) -- DISTINCT : 중복 되는 데이터 제거.
from emp;

select deptno, avg(sal)
from emp
group by deptno    -- 컬럼과 그룹함수의 레코드 개수가 같기 때문에. 
having avg(sal) >= 2000;    -- group by 에 대한 조건절, 그룹함수 사용

--부서번호 최대급여 최소급여
select deptno, max(sal), min(sal)
from emp
group by deptno
having max(sal) >= 2900
order by max(sal) desc;


--select    에서 사용가능한 절
--from
--where
--group by
--having
--order by      -- 맨마지막에 존재.


-- 조인 (join)  / 두 개 이상의 테이블을 사용해서 데이터를 조회하는 것
