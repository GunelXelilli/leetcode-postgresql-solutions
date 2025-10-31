-- Problem: Replace Employee ID With The Unique Identifier
-- Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/
-- Difficulty: Easy
-- Description:
--   Write a SQL query to show the unique ID of each user, along with their name.
--   Some employees may not have a unique identifier.
--   Use a LEFT JOIN to include all employees even if their unique ID is missing.

SELECT 
    u.unique_id,
    e.name
FROM Employees e
LEFT JOIN EmployeeUNI u
    ON e.id = u.id;

