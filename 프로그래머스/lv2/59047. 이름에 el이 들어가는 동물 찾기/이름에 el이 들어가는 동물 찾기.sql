-- 코드를 입력하세요
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE (NAME LIKE '%el%' OR NAME LIKE '%EL%' OR NAME LIKE '%eL%' or NAME LIKE '%El%')
AND ANIMAL_TYPE = 'Dog'
ORDER BY NAME ASC

