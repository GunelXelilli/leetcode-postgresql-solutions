-- Problem: Combine Two Tables
-- Link: https://leetcode.com/problems/combine-two-tables/
-- Difficulty: Easy
-- Description:
--   Combine person and address information using LEFT JOIN.

SELECT p.firstName, p.lastName, a.city, a.state
FROM Person p
LEFT JOIN Address a
ON p.personId = a.personId;

