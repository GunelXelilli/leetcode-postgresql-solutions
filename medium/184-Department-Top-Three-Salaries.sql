-- Problem: Department Top Three Salaries
-- Link: https://leetcode.com/problems/department-top-three-salaries/
-- Difficulty: Medium
-- Description:
--   For each department, find the top three highest-paid employees. 
--   Return department name, employee name, and salary.

SELECT d.name AS Department,
       e.name AS Employee,
       e.salary AS Salary
FROM (
    SELECT *,
           DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) AS rk
    FROM Employee
) e
JOIN Department d ON e.departmentId = d.id
WHERE e.rk <= 3;
