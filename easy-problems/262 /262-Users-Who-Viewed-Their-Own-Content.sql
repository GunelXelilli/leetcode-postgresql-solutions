-- Problem: Users Who Viewed Their Own Content
-- Link: https://leetcode.com/problems/trips-and-users/
-- Difficulty: Easy
-- Description:
--   Find all authors who have viewed their own content. 
--   Return their author_id.

SELECT author_id AS id
FROM Views
WHERE author_id = viewer_id
GROUP BY author_id;
