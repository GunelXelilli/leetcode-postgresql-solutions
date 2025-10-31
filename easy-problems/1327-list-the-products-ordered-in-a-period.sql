-- Problem: List the Products Ordered in a Period
-- Link: https://leetcode.com/problems/list-the-products-ordered-in-a-period/
-- Difficulty: Easy
-- Description:
--   Return the product IDs of all products that were ordered between two dates.
--   Ensure each product appears only once.

SELECT DISTINCT product_id
FROM Orders
WHERE order_date BETWEEN '2020-01-01' AND '2020-12-31'
ORDER BY product_id;

