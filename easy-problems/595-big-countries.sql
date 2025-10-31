-- Problem: Big Countries
-- Link: https://leetcode.com/problems/big-countries/
-- Difficulty: Easy
-- Description:
--   Find the name, population, and area of all big countries.
--   A country is considered big if it has an area of at least 3,000,000
--   or a population of at least 25,000,000.
--   Filter the 'World' table using the WHERE clause.

SELECT 
    name, 
    population, 
    area
FROM World
WHERE area >= 3000000 OR population >= 25000000;

