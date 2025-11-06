-- Problem: Department Top Three Salaries
-- Link:https://leetcode.com/problems/department-top-three-salaries/
-- Difficulty: Hard
-- Description:
--   Report employees who have one of the top three unique salaries in each department.
--   Return the result table in any order.

SELECT 
  Department,
  Employee,
  Salary
FROM (
  SELECT 
    d.name AS Department,
    e.name AS Employee,
    e.salary AS Salary,
    DENSE_RANK() OVER(PARTITION BY d.id ORDER BY e.salary DESC) AS drnk
  FROM Employee e
  JOIN Department d 
    ON e.departmentId = d.id
) ranked
WHERE drnk <= 3;

