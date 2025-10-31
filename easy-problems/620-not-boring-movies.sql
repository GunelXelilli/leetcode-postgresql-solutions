-- Problem: Not Boring Movies
-- Link: https://leetcode.com/problems/not-boring-movies/
-- Difficulty: Easy
-- Description:
--   Report movies with an odd-numbered ID and a description that is not "boring".
--   Return the result ordered by rating in descending order.

SELECT *
FROM Cinema
WHERE MOD(id, 2) = 1
  AND description != 'boring'
ORDER BY rating DESC;

