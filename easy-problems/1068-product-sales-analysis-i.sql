-- Problem: Product Sales Analysis I
-- Link: https://leetcode.com/problems/product-sales-analysis-i/
-- Difficulty: Easy
-- Description:
--   For each product, return the total quantity sold. 
--   If a product has no sales, show 0 as the total quantity.

SELECT p.product_id,
       COALESCE(SUM(s.qty), 0) AS total_quantity
FROM Product p
LEFT JOIN Sales s ON p.product_id = s.product_id
GROUP BY p.product_id
ORDER BY p.product_id;

