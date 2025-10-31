-- Problem: Customer Who Visited but Did Not Make Any Transactions
-- Link: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/
-- Difficulty: Easy
-- Description:
--   Write a SQL query to find the number of times each customer visited the store
--   but did not make any transactions.
--   Use a LEFT JOIN to include all visit records, and filter out those
--   where a transaction exists.

SELECT 
    customer_id,
    COUNT(visit_id) AS count_no_trans
FROM Visits
LEFT JOIN Transactions USING (visit_id)
WHERE transaction_id IS NULL
GROUP BY customer_id;

