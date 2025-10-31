-- Problem: Managers with at Least 5 Direct Reports
-- Link: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/
-- Difficulty: Medium
-- Description:
--   Find the names of managers who have at least 5 direct reports.

SELECT name
FROM Employee
WHERE id IN (
  SELECT managerId
  FROM Employee
  GROUP BY managerId
  HAVING COUNT(id) >= 5)

