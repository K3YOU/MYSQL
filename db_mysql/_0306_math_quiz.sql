SELECT * FROM emp;
SELECT * FROM dept;
SELECT * FROM salgrade;

/*
    [개념 1] ROUND 함수
        1) 특정 위치에서 반올림하기
        2) ROUND([숫자], [반올림 위치(선택)])
        3) 반올림 위치를 지정하지 않으면 소수점 첫 번째 자리에서 반올림이 수행된다.
*/
-- [실습 1-1] ROUND 함수를 사용하여 반올림된 숫자 출력하기
select round(1234.5678 , 3 ) as round1,
	round(1234.5678 , 2 ) as round2,
	round(1234.5678 , 1 ) as round3,
    round(1234.5678 , 0 ) as round4;



/*
    [개념 3] CEIL, FLOOR 함수
        1) CEIL  : 지정한 숫자와 가까운 큰 정수를 반환
        2) FLOOR : 지정한 숫자와 가까운 작은 정수를 반환
        3) CEIL([숫자]), FLOOR([숫자])
*/
-- [실습 3-1] CEIL, FLOOR 함수로 숫자 출력하기
select ceil(1234.5678  ) as round1,
	floor(1234.5678 ) as round2;

/*
    [개념 5] MOD 함수
        1) 숫자를 나눈 나머지 값을 구하기
        2) MOD([나눗셈 될 숫자], [나눌 숫자])
*/
-- [실습 5-1] MOD 함수를 사용하여 나머지 값 출력하기

SELECT mod(7, 3);

