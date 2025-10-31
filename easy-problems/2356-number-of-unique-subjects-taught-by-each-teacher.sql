-- Problem: Number of Unique Subjects Taught by Each Teacher
-- Link: https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/
-- Difficulty: Easy
-- Description:
--   Calculate the number of unique subjects each teacher teaches in the university.
--   Return the teacher_id and the count of unique subjects as 'cnt'.

SELECT teacher_id,
       COUNT(DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id
ORDER BY teacher_id;


