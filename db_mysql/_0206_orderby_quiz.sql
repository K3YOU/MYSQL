SELECT * FROM book;

# [문제] book테이블에서 도서명과 출판일 가져오기
# [조건] 출판일을 기준으로 정렬
SELECT book_title ,book_publishing_date FROM book
 order by book_publishing_date;


# !!!!!!!!! [문제] book테이블에서 도서명에 '자바'가 들어가는 도서 가져오기
# [조건] 도서명을 기준으로 정렬
SELECT * FROM book
WHERE book_title like "%자바%"
order by book_title desc;

SELECT * FROM book
WHERE book_title like "%자바%"
order by book_title ;