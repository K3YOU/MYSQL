SELECT * from cart;
SELECT * from member;
SELECT * from book;

# [문제] member테이블에서 회원의 수를 성별로 가져오기
SELECT count(*),member_gender from member
group by member_gender; 

# [문제] book테이블에서 도서 종류별 도서 수량 가져오기
select count(*),book_kind from book
GROUP BY book_kind;
# [문제] cart테이블에서 회원별로 구입한 총 수량 가져오기
# [조건] 내림차순 정렬하기
SELECT buyer, SUM(buy_count) from cart
GROUP BY buyer #가로를 어떻게 묶어서 표현할 것인지
ORDER BY sum(buy_count) desc; #SUM(buy_count)를 내림차순으로 정렬하라  = order by
#-----------------------------------------------------------------------
#!!!!!!!!!! [문제] cart테이블에서 회원이 구입한 도서의 수량이 2개 이상인 회원의 id 가져오기
SELECT buyer, sum(buy_count) from cart
GROUP BY buyer
having sum(buy_count)>= 2;

# !!!!!!!!!!!! [문제] book테이블에서 2015년에서 2019년 사이에 출간한 도서 중에
#       재고 수량이 3개 이하인 도서를 종류별 개수 가져오기
select book_title, count(book_kind) from book
where book_publishing_date >= '2015-01-01' and book_publishing_date <= '2019-12-31' and book_count <= 3  
group by book_kind;