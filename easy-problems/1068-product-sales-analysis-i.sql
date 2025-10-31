-- Problem: Product Sales Analysis I
-- Link: https://leetcode.com/problems/product-sales-analysis-i/
-- Difficulty: Easy
-- Description:
--   Report the product_name, year, and price for each sale in the Sales table.
--   Return the results in any order.

SELECT p.product_name,
       s.year,
       s.price
FROM Sales s
JOIN Product p USING(product_id)
ORDER BY p.product_name, s.year;


