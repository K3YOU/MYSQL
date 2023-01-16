


INSERT INTO DEPT (DEPTNO, DNAME, LOC)
VALUES(10, 'ACCOUNTING', 'NEW YORK');

INSERT INTO dept 
VALUES(20, 'RESEARCH', 'DALLAS');

INSERT INTO dept 
VALUES(30, 'SALES', 'CHICAGO');

INSERT INTO dept 
VALUES(40, 'OPERATIONS', 'BOSTON');




INSERT INTO emp 
VALUES( 7839, 'KING', 'PRESIDENT', null, '1981-11-17',  5000, null, 10 );

INSERT INTO emp 
VALUES( 7698, 'BLAKE', 'MANAGER', 7839, '1981-5-1', 2850, null, 30 );

INSERT INTO emp 
VALUES( 7782, 'CLARK', 'MANAGER', 7839, '1981-9-6',  2450, null, 10 );

INSERT INTO emp 
VALUES( 7566, 'JONES', 'MANAGER', 7839, '1981-4-2', 2975, null, 20 );

INSERT INTO emp 
VALUES( 7788, 'SCOTT', 'ANALYST', 7566,'1987-7-13',  3000, null, 20 );

INSERT INTO emp 
VALUES( 7902, 'FORD', 'ANALYST', 7566, '1982-12-3', 3000, null, 20 );

INSERT INTO emp 
VALUES(  7369, 'SMITH', 'CLERK', 7902,  '1980-12-7',  800, null, 20 );

INSERT INTO emp 
VALUES( 7499, 'ALLEN', 'SALESMAN', 7698, '1983-7-2', 1600, 300, 30 );

INSERT INTO emp 
VALUES(  7521, 'WARD', 'SALESMAN', 7698,'1982-2-22', 1250, 500, 30 );

INSERT INTO emp 
VALUES( 7654, 'MARTIN', 'SALESMAN', 7698, '1984-9-20', 1250, 1400, 30 );

INSERT INTO emp 
VALUES( 7844, 'TURNER', 'SALESMAN', 7698, '1981-4-5', 1500, 0, 30 );

INSERT INTO emp 
VALUES( 7876, 'ADAMS', 'CLERK', 7788, '1986-7-4', 1100, null, 20 );

INSERT INTO emp 
VALUES( 7900, 'JAMES', 'CLERK', 7698,'1983-6-12', 950, null, 30 );

INSERT INTO emp 
VALUES( 7934, 'MILLER', 'CLERK', 7782,'1982-8-12', 1300, null, 10 );

INSERT INTO salgrade VALUES (1, 700, 1200);
INSERT INTO salgrade VALUES (2, 1201, 1400);
INSERT INTO salgrade VALUES (3, 1401, 2000);
INSERT INTO salgrade VALUES (4, 2001, 3000);
INSERT INTO salgrade VALUES (5, 3001, 9999);

SELECT * FROM emp;
SELECT * FROM dept;
SELECT * FROM salgrade
/*
    [개념 1] SELECT문
    (1) 정의
        데이터베이스에 보관되어 있는 데이터 조회
    (2) 기본 형식
        SELECT [열 이름]
        FROM [테이블 이름];
*/
-- [개념 1-1] *로 테이블 전체 열 출력하기 


-- [실습 1-1] EMP 테이블 전체 열 조회하기

select * from emp;
select * from dept;
select * from salgrade;
-- [개념 1-2] 테이블 부분 열 출력하기
desc emp;
desc dept;
desc salgrade;


-- [실습 1-2] 열을 쉼표로 구분하여 출력하기

 

----------------------------------------------------------------------------------------------

/*
    [개념 2] DISTINCT
    (1) 정의
        데이터의 중복을 제거
*/
-- [개념 2-1](열이 한 개인 경우)DISTINCT로 열 중복 제거하기

-- [실습 2-1] 중복없이 부서번호만 출력하기

select DISTINCT dname from dept;

    
-- [개념 2-2] (열이 여러 개인 경우)DISTINCT로 열 중복 제거하기
-- [실습 2-2] 중복없이 직책과 부서번호 출력하기
select * from dept;
select DISTINCT deptno,dname from dept;

    
-- [개념 2-3] ALL로 중복되는 열 제거 없이 그대로 출력하기
-- [실습 2-3] 직책, 부서 번호 출력하기(ALL 사용)
select all deptno,dname from dept;


----------------------------------------------------------------------------------------------

/*
    [개념 3] 별칭 설정하기 AS
    (1) 정의
        본래 열 이름 대신 붙이는 이름을 별칭(alias)이라고 한다.
*/
-- [실습 3-1] 별칭을 사용하여 사원의 연간 총 수입 출력하기
select * from salgrade;
SELECT avg(losal+hisal) as middle from salgrade ;


-- COMM에 NULL 값이 들어있는 열에는 데이터가 출력되지 않는다.(*)



----------------------------------------------------------------------------------------------

/*
    [개념 4] ORDER BY
    (1) 정의
        어떤 기준으로 데이터를 정렬
    (2) 기본 형식
        SELECT [열 이름]
        FROM [테이블 이름]
        (그 밖의 절)
        ORDER BY [정렬하려는 열 이름] [정렬 옵션];
    (3) 정렬 옵션을 지정하지 않을 경우 기본값으로 오름차순(ASC)이 설정된다.
    (4) 오름차순(ASC, ascending), 내림차순(DESC, descending)
*/
-- [실습 4-1] EMP 테이블의 모든 열을 급여 기준으로 오름차순 정렬하기
select * from emp
order by sal asc;



-- [실습 4-2] EMP 테이블의 모든 열을 급여 기준으로 내림차순 정렬하기

select * from emp
order by sal desc;


-- [개념 4-3] 각각의 열에 내림차순과 오름차순 동시에 사용하기


-- [실 습 4-3] EMP 테이블의 전체 열을 부서 번호(오름차순)와 급여(내림차순)로 정렬하기
-- 작성된 순서대로 부서 번호 열을 기준으로 먼저 오름차순으로 정렬한 후에
-- 부서 번호 열 값이 같은, 즉 같은 부서에서 근무하고 있는 사원들끼리는 
-- 급여가 높은 사원부터 낮은 사원으로 내림차순으로 정렬하여 출력

select * from emp
order by deptno asc, sal desc;



---------------------------------------------------------------------------------------------

-- [문제 4-1] EMP 테이블에서 사원 번호와 부서 번호만 조회하기
-- [정답 4-1]
select * from emp;
select empno,deptno from emp;

    
-- [문제 4-2] EMP 테이블의 JOB열 데이터를 중복 없이 출력하기
-- [정답 4-2]

select DISTINCT job from emp;


    
-- [문제 4-3] EMP 테이블의 모든 열을 사원 번호 기준으로 오름차순 정렬하기
-- [정답 4-3]
select * from emp
ORDER BY empno asc;



-- [문제 4-4] EMP 테이블의 모든 열을 사원 번호 기준으로 내림차순 정렬하기
-- [정답 4-4]
select * from emp
order by empno desc;


-- [문제 4-5] 다음의 모든 조건을 만족하는 SQL문 작성하기
-- [조건 4-1] 조회할 테이블은 EMP 테이블이며 모든 열을 출력한다.
-- [조건 4-2] 출력되는 열의 별칭은 다음과 같다. as
--          EMPNO열      ▶ EMPLOYEE_NO
--          ENAME 열     ▶ EMPLOYEE_NAME
--          MGR열        ▶ MANAGER
--          SAL열        ▶ SALARY
--          COMM열       ▶ COMMISSION
--          DEPTNO열     ▶ DEPARTMENT_NO
-- [조건 4-3] 부서 번호를 기준으로 내림차순으로 정렬하되 group 
--         부서 번호가 같다면 사원 이름을 기준으로 오름차순 정렬한다. having
-- [정답 4-5]
select  empno as employee_no, ename as employee_name, mgr as manager, sal as salary , comm as commission ,deptno as department_no from emp
order by deptno desc, ename asc;



