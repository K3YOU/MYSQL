SELECT * FROM emp;
SELECT * FROM dept;
SELECT * FROM salgrade;

/*
    [개념 1] UPPER, LOWER 함수 : 대소문자 바꿔주기
        . UPPER(문자열)    : 괄호 안 문자 데이터를 모두 대문자로 변환하여 반환
        . LOWER(문자열)    : 괄호 안 문자 데이터를 모두 소문자로 변환하여 반환
*/
-- [개념 1-1] UPPER, LOWER 함수 사용하기
-- [실습 1-1]
-- 사원들 이름 소문자/대문자로 바꾸기
select ename, upper(ename) as u, lower(ename) as l from emp
;



    
-- [개념 1-2] UPPER 함수로 문자열 비교하기
-- [실습 1-2] 사원 이름이 SCOTT인 데이터 찾기
select * from emp
where ename = "SCOTT";



-- [개념 1-3] UPPER 함수로 문자열 비교하기
-- [실습 1-3] 사원 이름에 SCOTT 단어를 포함한 데이터 찾기
select * from emp
where upper(ename) like  '%SCOTT%';

SELECT *
    FROM EMP
WHERE UPPER(ENAME) LIKE UPPER('%scott%');



/*
    [개념 2] LENGTH함수 : 문자열 길이
*/
-- [개념 2-1] 선택한 열의 문자열 길이 구하기
-- [실습 2-1] 사원이름과 사원이름의 길이 출력하기


    select ename, length(ename) from emp
    ;
-- [개념 2-2] WHERE절에서 LENGTH함수 사용하기
-- [실습 2-2] 사원 이름의 길이가 5이상인 사원정보 출력하기

select * from emp
where length(ename) >= 5;

/*
    [개념 3] SUBSTR 함수 : 문자열 일부 추출
        . SUBSTR(문자열 데이터, 시작 위치, 추출 길이)
            - 문자열 데이터의 시작 위치부터 추출 길이만큼 추출한다.
         
        . SUBSTR(문자열 데이터, 시작 위치)
            - 문자열 데이터의 시작 위치부터 문자열 데이터 끝까지 추출한다.
           
*/
-- [실습 3-1] SUBSTR 함수 사용하기


    select ename, substr(ename,3) from emp;


/*
    [개념 4] INSTR 함수 : 문자열 데이터 안에서 특정 문자 위치 찾기
      INSTR(문자열 데이터, "원하는 문자")
*/

-- [개념 4-2] 특정 문자를 포함하고 있는 행 찾기
-- [실습 4-2] INSTR 함수로 사원 이름에 문자 S가 있는 행 구하기
SELECT * from emp
where instr(ename, "s");


-- [실습 4-3] LIKE 연산자로 사원 이름에 문자 S가 있는 행 구하기
SELECT * from emp
where ename like "%S%";



/*
    [개념 7] 두 문자열 데이터를 합치는 CONCAT 함수
        . 두 개의 문자열 데이터를 하나의 데이터로 연결해 주는 함수
*/
-- [실습 7-1] 두 열 사이에 콜롬(:) 넣고 연결하기

select concat(ename,empno), concat(ename, concat(":", empno)) from emp   #concat 안에 concat을 넣는거지
	where ename = "SCOTT"; 

 
    
/*
    [개념 8] TRIM,
        . TRIM([삭제 옵션(선택) [삭제할 문자(선택)] FROM [원본 문자열 데이터])
*/
-- [실습 8-1] TRIM 함수로 공백 제거하여 출력하기


SELECT TRIM('    [__ㅇㄴㅁㅎㅇㄴㄱㄹ__]     ') AS TRIM; 

-- [문제 1] 사원 이름을 모두 소문자로 출력하기
-- [정답 1]
select ename, lower(ename) from emp;
 
    
-- [문제 2] 직책 이름이 6글자 이상인 데이터만 출력하기
-- [정답 2]
select * from emp
where length(job) >= 6;


-- [문제 3] 모든 사원 이름을 세번째 글자부터 끝까지 출력하기
-- [정답 3]
select ename, substr(ename,3) from emp;

