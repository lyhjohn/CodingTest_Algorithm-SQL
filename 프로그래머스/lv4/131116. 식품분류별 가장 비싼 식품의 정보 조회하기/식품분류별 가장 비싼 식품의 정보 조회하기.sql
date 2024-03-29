-- 코드를 입력하세요
SELECT CATEGORY, MAX(PRICE) AS MAX_PRICE, MAX(PRODUCT_NAME) AS PRODUCT_NAME
FROM
(
    SELECT CATEGORY, PRODUCT_NAME, PRICE, DENSE_RANK() OVER (PARTITION BY CATEGORY ORDER BY PRICE DESC) AS RANK
    FROM FOOD_PRODUCT
)
WHERE RANK = 1
GROUP BY CATEGORY
HAVING CATEGORY = '과자'
OR CATEGORY = '국'
OR CATEGORY = '김치'
OR CATEGORY = '식용유'
ORDER BY MAX_PRICE DESC