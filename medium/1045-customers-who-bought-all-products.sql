-- Problem: Customers Who Bought All Products
-- Link: https://leetcode.com/problems/customers-who-bought-all-products/
-- Difficulty: Medium
-- Description:
--   Find all customers who have bought every product in the Product table.
--   Return their customer_id.

SELECT customer_id
FROM Customer
JOIN Product USING(product_key)
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(*) FROM Product);
