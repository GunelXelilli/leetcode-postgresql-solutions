-- Problem: Recyclable and Low-Fat Products
-- Link: https://leetcode.com/problems/recyclable-and-low-fat-products/
-- Difficulty: Easy
-- Description:
--   Find all products that are both recyclable and low-fat.
--   Return their product_id in ascending order.

SELECT product_id
FROM Products
WHERE recyclable = 'Y'
  AND low_fat = 'Y'
ORDER BY product_id;

