-- Problem: List the Products Ordered in a Period
-- Link: https://leetcode.com/problems/list-the-products-ordered-in-a-period/
-- Difficulty: Easy
-- Description:
--   Find products that were ordered in February 2020 with at least 100 units sold.
--   Return the product name and the total units sold. The result can be in any order.

WITH feb_orders AS (
    SELECT product_id,
           SUM(unit) AS total_units
    FROM Orders
    WHERE EXTRACT(YEAR FROM order_date) = 2020
      AND EXTRACT(MONTH FROM order_date) = 2
    GROUP BY product_id
)
SELECT p.product_name,
       f.total_units AS unit
FROM Products p
JOIN feb_orders f USING(product_id)
WHERE f.total_units >= 100;

