-- Problem: Second Highest Salary
-- Link: https://leetcode.com/problems/second-highest-salary/
-- Difficulty: Medium
-- Description:
--   Find the second highest distinct salary from the Employee table.
--   If there is no second highest salary, return null.

SELECT 
  MAX(salary) AS SecondHighestSalary
FROM (
  SELECT DISTINCT salary
  FROM Employee
  ORDER BY salary DESC
  LIMIT 1 OFFSET 1
) AS sub;

