# 컬럼 전부 가져오기
SHOW TABLES;
use _bookshop;
SELECT * FROM member;
SELECT * FROM book;
SELECT * FROM cart;

# [문제] 회원의 번호, 이름 가져오기

select member_no, member_name from member;

# [문제] 책의 번호, 이름, 가격 가져오기
select book_no,book_title,book_price from book;
# [문제] 장바구니의 번호, 구입한 회원의 id, 구입한 책제목 가져오기
select cart_no,buyer,book_title from cart;
# [문제] 각 도서의 가격을 10% 인상한 금액 출력
select book_title, book_price + book_price * 0.1 from book; 
# [문제] 각 도서의 가격을 10% 인하한 금액 출력
select book_title, book_price - book_price * 0.1 from book; 