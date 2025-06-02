-- 코드를 입력하세요
SELECT A.APNT_NO
      , B.PT_NAME
      , A.PT_NO
      , A.MCDP_CD
      , C.DR_NAME
      , A.APNT_YMD
FROM APPOINTMENT A
LEFT OUTER JOIN PATIENT B
                ON A.PT_NO = B.PT_NO
LEFT OUTER JOIN DOCTOR C
                ON A.MDDR_ID = C.DR_ID
WHERE 1 = 1
      AND A.MCDP_CD = 'CS'
      AND A.APNT_CNCL_YN = 'N'
      AND DATE_FORMAT(A.APNT_YMD, '%Y-%m-%d') = '2022-04-13'
ORDER BY A.APNT_YMD ASC
      
      