-- 코드를 입력하세요
SELECT I.FOOD_TYPE, I.REST_ID, I.REST_NAME, I.FAVORITES
FROM REST_INFO I
INNER JOIN 
(
    SELECT FOOD_TYPE, MAX(FAVORITES) FAVORITES
    FROM REST_INFO
    GROUP BY FOOD_TYPE
) A
ON A.FOOD_TYPE = I.FOOD_TYPE
AND A.FAVORITES = I.FAVORITES
ORDER BY FOOD_TYPE DESC;


# SELECT I.FOOD_TYPE, I.REST_ID, I.REST_NAME, I.FAVORITES
# FROM REST_INFO I
# WHERE (I.FOOD_TYPE, I.FAVORITES)
# IN
# (
#     SELECT FOOD_TYPE, MAX(FAVORITES) FAVORITES
#     FROM REST_INFO
#     GROUP BY FOOD_TYPE
# )
# ORDER BY FOOD_TYPE DESC;