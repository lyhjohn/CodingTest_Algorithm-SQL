-- 코드를 입력하세요
SELECT INS.ANIMAL_ID,  INS.NAME
FROM ANIMAL_INS INS
INNER JOIN ANIMAL_OUTS OUTS
ON OUTS.ANIMAL_ID = INS.ANIMAL_ID
ORDER BY OUTS.DATETIME - INS.DATETIME DESC
 FETCH FIRST 2 ROW ONLY

-- SELECT INS.ANIMAL_ID
--     , INS.NAME
--     FROM ANIMAL_INS INS
--         , ANIMAL_OUTS OUTS
--     WHERE INS.ANIMAL_ID = OUTS.ANIMAL_ID
--     ORDER BY OUTS.DATETIME - INS.DATETIME DESC
--     FETCH FIRST 2 ROW ONLY