SELECT * from cart;
SELECT * from member;
SELECT * from book;

# [문제] book테이블에서 전체 평균 가격보다 더 높은 도서정보 가져오기

select * from book
where (SELECT avg(book_price) from book) < book_price;
SELECT avg(book_price) from book;


# [문제] book테이블에서 가장 가격이 높은 도서 정보 가져오기

select * from book
WHERE (SELECT max(book_price) from book ) = book_price;
