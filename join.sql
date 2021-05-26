-- 조인 (join)  / 두 개 이상의 테이블을 사용해서 데이터를 조회하는 것

select ename, e.deptno, dname 
-- deptno 공통컬럼이니 어디테이블의 것을 가져올것인지 구분지어줘야함. 아니면 생략가능
from emp e, dept d -- 별칭 지정 / 지정하면 table의 원래 이름 사용 못함.
where e.deptno = d.deptno
and ename = 'ALLEN';

--acctounting  부서 소속 사원의 이름과 입사일을 출력하세요
select e.ename 이름, e.hiredate 입사일
from emp e, dept d
where e.deptno = d.deptno
and d.dname = 'ACCOUNTING';


-- 조인의 종류
-- cross join, equi join, non equi join, out join, self join

select *
from emp;

select *
from dept;

select *
from salgrade;

select ename, dname, grade
from emp, dept, salgrade sal
where emp.deptno = dept.deptno
and  emp.sal BETWEEN sal.losal and sal.hisal; 
-- emp.sal을 between 으로 hisal과 losal사이에 비교, 성립되는 것을 반환.  

-- self join / 논리적으로 table 을 나눔
select e.ename || '의 매니져는' || m.ename || '입니다'   -- || 닫으면 오류발생
from emp e,emp m  -- 별칭으로 한 테이블을 논리적으로 나눔(같은 대상을 다르게 부르는것뿐)
where e.mgr = m.empno;
-- self join의 단점 / 1명이 누락 (president / manager 없음)


--FORD와 동일한 근무지에서 근무하는 사원의 이름을 출력하세요. / 근무지x 근무부서o
                                -- 개인적으로 근무지라는 표현이 애매한것같다.
--단, FORD는 제외하고 출력한다.
                     -- 근무지정보는 emp에도 나와있음. dept table 필요x
                     
    -- 이렇게하면 같은 부서, 같은 지역인 사람을 찾게 됨.
select e2.ename 이름, d1.deptno "부서 번호", d1.loc 근무지역
from emp e1, emp e2, dept d1, dept d2 -- 이름 값 2번, 부서번호 값 2번 
where e1.ename = 'FORD' -- 이름 ford 조건
and e1.deptno = d1.deptno -- 부서번호 같은 값 찾아 loc 테이블로 넘어감
and d1.loc = d2.loc  -- 지역 비교, 같은 지역(데이터) 찾기
and e2.deptno = d2.deptno -- d1,d2 뭘 쓰던 상관없음.
and e2.ename <> 'FORD'; -- 조건,단 ford는 제외.



select  e2.ename
from emp e1, emp e2
where e1.deptno = e2.deptno
and e1.ename = 'FORD'
and e2.ename != 'FORD';

-- out join /
-- 데이터 값이 없고 틀려도(조건에 맞지 않아도 해당하는 table의 내용을 모두 출력) 
select e.ename || '의 매니져는 ' || m.ename || '입니다'   
from emp e,emp m  
where e.mgr = m.empno(+); -- 누락된 null 데이터도 출력해줌.