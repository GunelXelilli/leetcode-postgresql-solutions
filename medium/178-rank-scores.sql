-- Problem: [Problem Name]
-- Link: [LeetCode Link]
-- Difficulty: [Easy/Medium/Hard]
-- Description:
--   [1–2 lines explaining what the query does.]

select score, dense_rank() over(order by score desc) rank from Scores

