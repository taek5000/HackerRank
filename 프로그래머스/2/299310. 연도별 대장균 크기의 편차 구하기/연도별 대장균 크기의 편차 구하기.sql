# SELECT DATE_FORMAT(DIFFERENTIATION_DATE, '%Y') AS YEAR
#     , ID
#     , SIZE_OF_COLONY
#     # , STD(SIZE_OF_COLONY) AS YEAR_DEV
# FROM ECOLI_DATA
# # GROUP BY YEAR, ID
# WHERE ID = 1

SELECT YEAR(A.DIFFERENTIATION_DATE) AS YEAR
    , ABS(B.MAX_SIZE - A.SIZE_OF_COLONY) AS YEAR_DEV
    , A.ID
FROM ECOLI_DATA A
LEFT OUTER JOIN (SELECT YEAR(DIFFERENTIATION_DATE) AS YEAR
    , MAX(SIZE_OF_COLONY) AS MAX_SIZE
FROM ECOLI_DATA
GROUP BY YEAR) B
    ON YEAR(A.DIFFERENTIATION_DATE) = B.YEAR
ORDER BY YEAR ASC, YEAR_DEV ASC