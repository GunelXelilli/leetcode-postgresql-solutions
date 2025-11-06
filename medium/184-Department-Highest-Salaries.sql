-- Problem: Department Highest Salary
-- Link: https://leetcode.com/problems/department-highest-salary/
-- Difficulty: Medium
-- Description:
--   Find employees who have the highest salary in each department.
--   Return the department name, employee name, and salary.

SELECT d.name AS Department,e.name AS Employee,e.salary AS Salary
FROM Employee e
JOIN Department d ON e.departmentId = d.id
WHERE e.salary = (SELECT MAX(salary) FROM Employee
WHERE departmentId = e.departmentId
)
ORDER BY d.name, e.salary DESC
