-- 코드를 입력하세요
WITH FLAVOR_TOTAL_ORDER AS (
SELECT FLAVOR
      , TOTAL_ORDER
FROM FIRST_HALF
UNION ALL
SELECT FLAVOR
      , TOTAL_ORDER
FROM JULY),

MVP AS (
SELECT FLAVOR
      , SUM(TOTAL_ORDER) AS TOTAL
FROM FLAVOR_TOTAL_ORDER
GROUP BY FLAVOR
ORDER BY TOTAL DESC)

SELECT FLAVOR
FROM MVP
LIMIT 3
