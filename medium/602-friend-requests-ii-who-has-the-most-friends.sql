-- Problem: Friend Requests II: Who Has the Most Friends
-- Link: https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/
-- Difficulty: Medium
-- Description:
--   Find the person (or people) who have the most friends and the total number of friends they have.
--   Each row in RequestAccepted means two users became friends:
--     requester_id ↔ accepter_id
--   The output should contain the user id and the number of friends (num).

SELECT 
  id,
  COUNT(*) AS num
FROM (
  SELECT requester_id AS id FROM RequestAccepted
  UNION ALL
  SELECT accepter_id AS id FROM RequestAccepted
) AS all_friends
GROUP BY id
ORDER BY num DESC
LIMIT 1;

