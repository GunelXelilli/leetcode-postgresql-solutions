-- Problem: Exchange Seats
-- Link: https://leetcode.com/problems/exchange-seats/
-- Difficulty: Medium
-- Description:
--   Swap the seat id of every two consecutive students.
--   If the number of students is odd, the last student's seat remains unchanged.
--   Return the result table ordered by id in ascending order.

1)
WITH ctg_acc AS (
    SELECT *,
        CASE 
            WHEN income < 20000 THEN 'Low Salary'
            WHEN income BETWEEN 20000 AND 50000 THEN 'Average Salary'
            WHEN income > 50000 THEN 'High Salary'
        END AS category
    FROM Accounts
),
ctg AS (
    SELECT 'Low Salary' AS category
    UNION 
    SELECT 'Average Salary'
    UNION
    SELECT 'High Salary'
)
SELECT 
    ctg.category,
    COUNT(ctg_acc.account_id) AS accounts_count
FROM ctg
LEFT JOIN ctg_acc USING (category)
GROUP BY ctg.category;


2)
select 'Low Salary' as category,count(*) as accounts_count from Accounts
where income<20000 
union 
select 'Average Salary',count(*)  from Accounts
where income between 20000 and 50000
union  
select 'High Salary',count(*) from Accounts
where income>50000 
