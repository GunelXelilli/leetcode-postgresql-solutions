-- Problem: Consecutive Numbers
-- Link: https://leetcode.com/problems/consecutive-numbers/
-- Difficulty: Easy
-- Description:
--   Find all numbers that appear three times consecutively in the Logs table.
--   Return them as consecutiveNums.

SELECT DISTINCT num AS consecutiveNums
FROM (
    SELECT *,
           LAG(num) OVER (ORDER BY id) AS prev_num,
           LEAD(num) OVER (ORDER BY id) AS next_num
    FROM Logs
) AS t
WHERE num = prev_num
  AND num = next_num;

