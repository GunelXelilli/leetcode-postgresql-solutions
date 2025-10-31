-- Problem: Number of Unique Subjects Taught by Each Teacher
-- Link: https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/
-- Difficulty: Easy
-- Description:
--   For each teacher, find the number of unique subjects they teach.
--   Return the teacher's name and the count of unique subjects.

SELECT t.teacher_name,
       COUNT(DISTINCT s.subject_id) AS unique_subjects
FROM Teacher t
LEFT JOIN Teaches s ON t.teacher_id = s.teacher_id
GROUP BY t.teacher_name
ORDER BY t.teacher_name;

