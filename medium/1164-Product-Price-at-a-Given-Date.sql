-- Problem: Product Price at a Given Date
-- Link: https://leetcode.com/problems/product-price-at-a-given-date/
-- Difficulty: Medium
-- Description:
--   For each product, return the price at a given date ('2019-08-16').
--   If no price change exists before that date, return 10 as the default price.

WITH fv AS (
    SELECT *,
           FIRST_VALUE(new_price) OVER (PARTITION BY product_id ORDER BY change_date DESC) AS price
    FROM Products
    WHERE change_date <= '2019-08-16'
)
SELECT DISTINCT p.product_id,
       COALESCE(fv.price, 10) AS price
FROM Products p
LEFT JOIN fv USING(product_id)
ORDER BY price DESC;
