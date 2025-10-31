-- Problem: Project Employees I
-- Link: https://leetcode.com/problems/project-employees-i/
-- Difficulty: Easy
-- Description:
--   Write a solution to find the average experience years of all the employees for each project.
--   Round the result to 2 decimal places.

SELECT 
    project_id,
    ROUND(AVG(experience_years), 2) AS average_years
FROM Project
LEFT JOIN Employee USING(employee_id)
GROUP BY project_id;
