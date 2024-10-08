-- Waiter's Tips 데이터에는 레스토랑에서 근무한 웨이터가 서빙했던 테이블과 팁에 대한 정보가 들어있습니다. 서빙했던 테이블 중 고객이 홀수 명이었던 경우만 보여주는 쿼리를 작성해주세요.
-- 쿼리 결과에는 모든 컬럼이 출력되어야 합니다. 테이블 당 일행의 수는 size 컬럼에 들어있습니다. 예를 들어, 5명이서 방문한 테이블의 경우 size 컬럼의 값이 5입니다.

SELECT * FROM tips
-- WHERE size % 2 == 1;
WHERE MOD(size, 2) = 1;