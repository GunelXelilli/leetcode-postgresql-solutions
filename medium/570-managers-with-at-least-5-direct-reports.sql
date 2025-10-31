-- Problem: Managers with at Least 5 Direct Reports
-- Link: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/
-- Difficulty: Easy
-- Description:
--   Find the names of managers who have at least 5 direct reports.

WITH managercount AS (
    SELECT managerId, COUNT(managerId) AS report_count
    FROM Employee
    GROUP BY managerId
    HAVING COUNT(managerId) >= 5
)
SELECT name
FROM Employee
WHERE id IN (SELECT managerId FROM managercount);

