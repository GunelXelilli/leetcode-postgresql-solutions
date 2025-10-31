-- Problem: Biggest Single Number
-- Link: https://leetcode.com/problems/biggest-single-number/
-- Difficulty: Easy
-- Description:
--   Write a solution to find the largest number that appears only once in the MyNumbers table.
--   If no such number exists, return null.

SELECT 
    MAX(num) AS num
FROM (
    SELECT 
        num,
        COUNT(*) AS count_num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(*) = 1
) AS unique_numbers;
