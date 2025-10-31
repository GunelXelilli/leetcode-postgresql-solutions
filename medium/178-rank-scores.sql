-- Problem: Rank Scores
-- Link: https://leetcode.com/problems/rank-scores/
-- Difficulty: Medium
-- Description:
--   Assign ranks to each score in descending order. 
--   If two scores are the same, they should have the same rank. 
--   Use the DENSE_RANK() window function to handle ties correctly.


select score, dense_rank() over(order by score desc) rank from Scores

