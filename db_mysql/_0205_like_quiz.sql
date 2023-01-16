SELECT * FROM member;
SELECT * FROM book;
SELECT * FROM cart;

# [문제] book테이블에서 책 제목에 'java'가 포함되어 있는 책정보 가져오기
select * from book
where book_title like '%외국어';
# [문제] book테이블에서 책 제목에 'java' 또는 '자바' 가 포함되어 있는 책정보 가져오기
select * from book
where book_title like '%java%' or book_title like  '%자바%';
# [문제] book테이블에서 책 제목이 '나'로 시작되는 책정보 가져오기
select * from book
where book_title like '나%';
# [문제] book테이블에서 책 제목이 '외국어'로 끝나는 책정보 가져오기
select * from book
where book_title like '%외국어';

# [문제] member테이블에서 이름이 4글자인 회원정보 가져오기

SELECT * FROM member WHERE member_name LIKE '____';
#둘은 완전 다르다
SELECT  count(member_name) FROM member;
##count를 쓰면 이름이 몇 개 테이블에 적혀있는지를 알려주는거! 그 열의 개수를 알려주지~