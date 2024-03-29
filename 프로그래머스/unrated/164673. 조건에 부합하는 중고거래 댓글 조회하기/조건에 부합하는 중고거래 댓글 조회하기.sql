-- 코드를 입력하세요
SELECT
    B.TITLE
    , B.BOARD_ID
    , R.REPLY_ID
    , R.WRITER_ID
    , R.CONTENTS
    , SUBSTR(TO_CHAR(R.CREATED_DATE, 'YYYY-MM-DD'), 1, 10) AS CREATED_DATE
FROM USED_GOODS_BOARD B
INNER JOIN USED_GOODS_REPLY R
ON R.BOARD_ID = B.BOARD_ID
WHERE SUBSTR(TO_CHAR(B.CREATED_DATE, 'YYYYMMDD'), 1, 4) = '2022'
  AND SUBSTR(TO_CHAR(B.CREATED_DATE, 'YYYYMMDD'), 5, 2) = '10'
ORDER BY R.CREATED_DATE, B.TITLE