# [문제] member테이블에서 회원의 가입 일자를 한글 날짜 형식으로 가져오기

SELECT member_no, DAtE_format(member_reg_date,'%Y년 %m월 %d일, %H시 %i분 %s초')
FROM member
order by member_reg_date DESC;

