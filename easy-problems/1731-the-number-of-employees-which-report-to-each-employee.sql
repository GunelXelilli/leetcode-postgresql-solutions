-- Problem: The Number of Employees Which Report to Each Employee
-- Link: https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/
-- Difficulty: Medium
-- Description:
--   For each employee, find the number of direct reports and the average age of those reports.
--   Return employee_id, name, reports_count, and average_age.

SELECT 
    m.employee_id,
    m.name,
    COUNT(e.reports_to) AS reports_count,
    ROUND(AVG(e.age)) AS average_age
FROM Employees m
JOIN Employees e ON m.employee_id = e.reports_to
GROUP BY m.employee_id, m.name
ORDER BY m.employee_id;

