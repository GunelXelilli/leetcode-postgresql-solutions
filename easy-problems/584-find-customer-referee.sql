-- Problem: Find Customer Referee
-- Link: https://leetcode.com/problems/find-customer-referee/
-- Difficulty: Easy
-- Description:
--   Find all customers who have a referee (someone who referred them).
--   Return the customer_id and the referee_id.

SELECT customer_id,
       referee_id
FROM Customers
WHERE referee_id IS NOT NULL
ORDER BY customer_id;

