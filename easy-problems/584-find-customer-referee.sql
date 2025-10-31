-- Problem: Find Customer Referee
-- Link: https://leetcode.com/problems/find-customer-referee/
-- Difficulty: Easy
-- Description:
--   Find the names of customers who are either:
--     1. Referred by a customer with id != 2
--     2. Not referred by any customer (referee_id is NULL)
--   Return the result in any order.

SELECT name
FROM Customer
WHERE referee_id IS NULL
   OR referee_id != 2;


