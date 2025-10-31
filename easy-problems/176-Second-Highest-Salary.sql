-- Problem: Second Highest Salary
-- Link: https://leetcode.com/problems/second-highest-salary/
-- Difficulty: Easy
-- Description:
--   Find the second highest salary from the Employee table.
--   If it does not exist, return null.

SELECT MAX(salary) AS SecondHighestSalary
FROM (
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
) AS sub;
