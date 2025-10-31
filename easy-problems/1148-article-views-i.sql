-- Problem: Article Views I
-- Link: https://leetcode.com/problems/article-views-i/
-- Difficulty: Easy
-- Description:
--   For each author, find the total number of views on their articles.
--   Return the author's name and the total views.

SELECT a.author_id,
       COUNT(v.user_id) AS views_count
FROM Articles a
LEFT JOIN Views v ON a.article_id = v.article_id
GROUP BY a.author_id
ORDER BY a.author_id;

