-- Problem: Article Views I
-- Link: https://leetcode.com/problems/article-views-i/
-- Difficulty: Easy
-- Description:
--   Find all authors who have viewed at least one of their own articles.
--   Return the author_id as 'id' sorted in ascending order.

SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id;


